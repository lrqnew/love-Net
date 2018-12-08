using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI
{
    public partial class InnerMonologue : System.Web.UI.Page
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
            string userid = Session["id"].ToString();
            string sql = string.Format("select * from UserInfo where userId={0}",userid);
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            string monologue = dt.Rows[0][13].ToString();//内心独白
            this.num.Value = monologue;
            this.TextBox1.Text = Session["id"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = string.Format("update UserInfo set monologue='{0}' where userId={1}",num.Value,TextBox1.Text);
            if (SQLHelper.ExecuteSql(sql) > 0)
            {
                Response.Write("<script>alert('内心独白已更改！')</script>");
                load();
            }
        }
    }
}