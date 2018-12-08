using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI
{
    public partial class TakeActive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateBing();
            }
        }
        void DateBing()
        {
            string uid = Session["id"].ToString();
            string sql = string.Format("select af.activitiesID,af.activitiesPic,af.activitiesTit,af.activitiesContent, " +
                "af.activitiesTime, af.activitiesAddress, af.inCount, af.Moneys " +
                "from Registration reg, ActivitiesInfo af, UserInfo uf where" +
                " reg.userID = uf.userId and af.activitiesID = reg.activitiesID and  reg.userID ={0}", uid);
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count >= 1)
            {
                string pic = dt.Rows[0][1].ToString();//图片
                string tie = dt.Rows[0][2].ToString();//标题
                string Cont = dt.Rows[0][3].ToString();//内容
                string tiem = dt.Rows[0][4].ToString();//时间
                string adress = dt.Rows[0][5].ToString();//地址
                string intcont = dt.Rows[0][6].ToString();//参与人数
                string money = dt.Rows[0][7].ToString();//费用
                this.DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            else
            {
                
            }
            
        }
    }
}