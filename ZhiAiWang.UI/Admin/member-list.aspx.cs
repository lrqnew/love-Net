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
    public partial class member_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RepeaterBind();
            }
        }
        void RepeaterBind()
        {
            //this.RepeaterUserList.DataSource = UserInfoManager.SelectUserListByPaging(5,0);
            this.RepeaterUserList.DataSource =UserInfoManager.SelectUserInfoAll();
            this.RepeaterUserList.DataBind();
        }
    }
}