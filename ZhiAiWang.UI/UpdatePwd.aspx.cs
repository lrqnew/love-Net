using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
namespace ZhiAiWang.UI
{
    public partial class UpdatePwd : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string tel = Session["tel"].ToString();
            this.TextBox1.Text = tel;
            this.TextBox2.Text = Session["id"].ToString();
        }
       
        public static Random rad = new Random();
        public static int pass = rad.Next(1000, 10000);
        protected void Button1_Click(object sender, EventArgs e)
        {
            string tel = this.TextBox1.Text;
            if (Messages.Message(tel, pass))
            {
                Response.Write("<script>alert('验证码已发送！')</script>");
            }
            else
            {
                Response.Write("<script>alert('发送失败')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtPwd.Text!=txtRePwd.Text)
            {
                return;
            }
            else
            {
                if (this.w_confirmation.Value!=pass.ToString())
                {
                    Response.Write("<script>alert('验证码输入不正确！')</script>");
                }
                else
                {
                    
                    string sql = string.Format("update UserInfo set pwd='{0}' where userId={1}",FormsAuthentication.HashPasswordForStoringInConfigFile(this.txtPwd.Text.Trim(),"md5"),TextBox2.Text);
                    if (SQLHelper.ExecuteSql(sql) > 0)
                    {
                        Response.Write("<script>alert('密码修改成功！')</script>");
                    }
                }
            }
            
        }
    }
}