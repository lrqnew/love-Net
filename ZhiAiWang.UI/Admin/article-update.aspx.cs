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
    public partial class article_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load();
            }
            
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
        void load()
        {
            string sql = string.Format("select activitiesID , activitiesPic,activitiesTit , activitiesContent, CONVERT(varchar(10),activitiesTime,120) as" +
                                           @" activitiesTime, activitiesAddress, inCount, Moneys 
                                              from ActivitiesInfo where activitiesID={0}", Request["id"]);
            DataTable dt = DBHelper.Instance().ExecuteSqlOrProc(sql, null);
            string pic = dt.Rows[0][1].ToString();
            string tie = dt.Rows[0][2].ToString();
            string Content = dt.Rows[0][3].ToString();
            string Time = dt.Rows[0][4].ToString();
            string Address = dt.Rows[0][5].ToString();
            string inCount = dt.Rows[0][6].ToString();
            string Money = dt.Rows[0][7].ToString();
            this.TextBox1.Text = tie;
            this.textarea.Value = Content;
            this.TextBox2.Text = inCount;
            this.TextBox3.Text = Money;
            this.commentdatemin.Value = Time;
            this.TextBox4.Text = Address;
            this.pic.ImageUrl = "/images/newActit/" + pic;
            this.Label1.Text = pic;
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            string sql = string.Format("update ActivitiesInfo set activitiesTit='{0}',activitiesContent='{1}',inCount='{2}',Moneys='{3}',activitiesTime='{4}',activitiesAddress='{5}',activitiesPic='{6}' where activitiesID={7}",
                this.TextBox1.Text,this.textarea.Value,this.TextBox2.Text,this.TextBox3.Text,this.commentdatemin.Value,this.TextBox4.Text, this.Label1.Text, Request["id"]);
            if (SQLHelper.ExecuteSql(sql)>0)
            {
                Response.Write("<script>alert('修改活动成功！')</script>");
            }
        }
    }
}