using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI
{
    public partial class pay1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //spanPrice.Text =123+ "qwqwedxas";
            string str=Context.Request["price"];
            Label1.Text = str;
            Label2.Text = str;
        }
    }
}