using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI
{
    public partial class ZhiAi404 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //显示程序中的错误码

                if (Application["erroy"] != null)

                {

                    Response.Write(Application["erroy"].ToString());

                }
            }
        }
    }
}