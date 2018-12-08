using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using Microsoft.Practices.EnterpriseLibrary.Data;
namespace ZhiAiWang.UI
{
    public partial class dbTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Database db = DatabaseFactory.CreateDatabase();
            Response.Write("链接成功");
        }
    }
}