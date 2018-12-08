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
    public partial class member_del : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ReperBind();
            }
        }
        /// <summary>
        /// reper绑定
        /// </summary>
        void ReperBind()
        {
            this.Repeater1.DataSource = UserInfoManager.SelectUserStopAll();
            this.Repeater1.DataBind();
        }
    }
}