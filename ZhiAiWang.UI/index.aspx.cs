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
    public partial class regest : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataListInfoByID();               
            }
        }
        void BindDataListInfoByID()
        {
            
            this.PerInfoDataList.DataSource = UserInfoManager.SelectInfoByID( Convert.ToInt32( Session["id"]));
            this.PerInfoDataList.DataBind();
        }

        protected void PerInfoDataList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}