using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using ZhiAiWang.BLL;
namespace ZhiAiWang.UI
{
    public partial class comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepter1();
                BindCofMesg();
            }
        }
        void BindRepter1()
        {
            int id = Convert.ToInt32(Request["id"]);
            Session["cofId"] = id;
            this.Repeater1.DataSource = CircleOfFriendsManager.SelectByCofId(id);
            this.Repeater1.DataBind();
        }
        /// <summary>
        /// 绑定评论
        /// </summary>
        void BindCofMesg()
        {
          
            this.Repeater2.DataSource = AnswerManager.SelectAnswer(Convert.ToInt32( Session["cofId"]));
            this.Repeater2.DataBind();
        }
    }
}