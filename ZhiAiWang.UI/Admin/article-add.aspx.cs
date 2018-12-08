using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZhiAiWang.DAL;

namespace ZhiAiWang.UI.admin
{
    public partial class article_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        public string filename = "";
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                if (fileUpload.PostedFile.FileName == "")
                {
                    this.Label1.Text = "请选择上传文件！";
                }
                else
                {
                    //获取上传的文件名
                    string fileName = fileUpload.FileName;
                    //获取上传文件的文件后缀名
                    string fileFix = fileName.Substring(fileName.LastIndexOf('.') + 1).ToLower();
                    if (fileFix != "png" && fileFix != "jpg" && fileFix != "jpeg" && fileFix != "gif")
                    {
                        this.Label1.Text = "上传的文件不是图片文件";
                    }
                    else
                    {
                        //得到的是文件的完整路径,包括文件名，如：
                        //C:/Documents and Settings/Administrator/My Documents/My Pictures/20022775_m.jpg
                        //string filepath = FileUpload1.FileName;
                        //得到上传的文件名20022775_m.jpg
                        string filepath = fileUpload.PostedFile.FileName;
                        //20022775_m.jpg        

                        filename = fileName;

                        //取得文件在服务器上保存的位置C:/Inetpub/wwwroot/WebSite1/images/20022775_m.jpg
                        string serverpath = Server.MapPath("~/images/newActit/") + filename;
                        //将上传的文件另存为
                        fileUpload.PostedFile.SaveAs(serverpath);
                        this.pic.ImageUrl = "~/images/newActit/" + filename;
                        this.Label1.Text = filename;
                    }

                }
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            string sql = string.Format("insert into ActivitiesInfo values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",this.Label1.Text,this.TextBox1.Text,this.textarea.Value,this.commentdatemin.Value,this.TextBox4.Text, this.TextBox2.Text, this.TextBox3.Text);
            if (SQLHelper.ExecuteSql(sql) > 0)
            {
                Response.Write("<script>alert('添加活动成功！')</script>");
            }

        }
    }
}