using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZhiAiWang.DAL;
namespace ZhiAiWang.UI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                repeater1DataBind();
            }
        }
        void repeater1DataBind()
        {
            string sql = string.Format("select petname, headImgUrl, helloState, helUserIDHello, COUNT(*) cou from Hello , UserInfo  where UserInfo.userId = helUserIDHello  and helUserID = {0}   group by petname, headImgUrl, helloState, helUserIDHello",Session["id"].ToString());
            Repeater1.DataSource = SQLHelper.Query(sql).Tables[0];
            Repeater1.DataBind();
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "requ")
            {
                string id = e.CommandArgument.ToString();
                string sql = string.Format("select * from Hello,HelloContent,UserInfo where Hello.helContentID=HelloContent.helConID and helUserID={0} and helUserIDHello={1} and UserInfo.userId=helUserIDHello",Session["id"].ToString(), id);
                DataTable dt = SQLHelper.Query(sql).Tables[0];
                Repeater2.DataSource = dt;
                Repeater2.DataBind();
                string sql1 = string.Format("update Hello set helloState=1 where helUserID ={0} and helUserIDHello={1}", Session["id"].ToString(),id);
                DBHelper.Instance().ExecuteNonQuery(sql1,null);
                repeater1DataBind();

            }
            if (e.CommandName == "del")
            {
                string id = e.CommandArgument.ToString();
                string sql = string.Format("delete Hello where helUserIDHello={0}", id);
                if (DBHelper.Instance().ExecuteNonQuery(sql, null))
                {
                    repeater1DataBind();
                }
            }
        }
    }
}