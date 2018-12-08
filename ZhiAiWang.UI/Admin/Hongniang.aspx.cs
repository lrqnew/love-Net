using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI.admin
{
    public partial class Hongniang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load();
            }
        }
        void load()
        {
            string sql = string.Format("select UserInfo.userId,LoversID,name,gender,salary,school,email,lover,apply from Lovers ,UserInfo where Lovers.userID=UserInfo.userId and Lovers.apply=1");
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];

            
            this.Repeater1.DataSource = dt;
            this.Repeater1.DataBind();
        }
    }
}