using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZhiAiWang.DAL;

namespace ZhiAiWang.UI
{
    public partial class RegInfo : System.Web.UI.Page
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
            string uid = Session["id"].ToString();
            string sql = string.Format("select * from UserInfo where userId={0}", uid);
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            string Adress = dt.Rows[0][23].ToString();//地址
            string education = dt.Rows[0][3].ToString();//学历
            string Sex = dt.Rows[0][2].ToString();//性别
            string Bridaty = dt.Rows[0][28].ToString();//性别
            string height = dt.Rows[0][5].ToString();//身高
            string salary = dt.Rows[0][6].ToString();//年收入
            string marriageState = dt.Rows[0][7].ToString();//婚况
            string family = dt.Rows[0][22].ToString();//住房状况
            this.adress.Value = Adress;
            this.DropDownList1.Text = education;
            this.DropDownList2.Text = salary;
            this.DropDownList3.Text = height;
            this.DropDownList5.Text = family;
            this.DropDownList4.Text = marriageState;
            this.TextBox1.Text = Session["id"].ToString();
            this.Label1.Text = Sex;
            this.Label2.Text = Convert.ToDateTime(Bridaty).ToString("yyyy-MM-dd");
            this.Label3.Text = education;
            this.Label4.Text = height;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = string.Format("update UserInfo set education='{0}',[address]='{1}',salary='{2}',height='{3}',family='{4}',marriageState='{5}' where userId= {6}",
                this.DropDownList1.SelectedValue.ToString(),adress.Value,DropDownList2.SelectedValue.ToString(), DropDownList3.SelectedValue.ToString(), DropDownList5.SelectedValue.ToString(), DropDownList4.SelectedValue.ToString(),this.TextBox1.Text);
            if (SQLHelper.ExecuteSql(sql) > 0)
            {
                Response.Write("<script>alert('更改信息成功！')</script>");
                load();
            }
        }
    }
}