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
    public partial class CommentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindCommentList();
            }
        }
        void BindCommentList()
        {
            this.CommentList1.DataSource = CircleOfFriendsManager.SelectAnswerAll();
            this.CommentList1.DataBind();
        }
    }
}