using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using ZhiAiWang.BLL;
namespace ZhiAiWang.UI.Admin
{
    public partial class comment_show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindComment();
            }
        }
        /// <summary>
        /// 绑定评论
        /// </summary>
        void BindComment()
        {
            this.Comment.DataSource = CircleOfFriendsManager.SelectAllComments();
            this.Comment.DataBind();
        }
    }
}