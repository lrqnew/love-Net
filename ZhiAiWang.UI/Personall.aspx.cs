using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Cryptography;
using ZhiAiWang.DAL;
namespace ZhiAiWang.UI
{
    public partial class Personall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                head();
                datelist();
                mes();
            }
            
        }
        void mes() {
            string id = Session["id"].ToString();
            string sql = string.Format("select COUNT(1) from Hello where helUserID ={0} and helloState=0",id);
          string num=  DBHelper.Instance().ExecuteScalar(sql).ToString();
            Label2.Text =num;
            
        }
        void head ()
        {
            string uid = Session["id"].ToString();
            string sql = string.Format("select * from UserInfo where userId={0}", uid);
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            string head = dt.Rows[0][10].ToString();//头像
            this.pic.ImageUrl = "~/images/header/" + head;
            Session["head"] = head;
        }
        void datelist()
        {
            string uid = Session["id"].ToString();
            string sql = string.Format("select  * from UserInfo where userId <>{0} and gender<>'{1}'", uid, Session["Sex"]);
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            this.DataList1.DataSource = dt;
            this.DataList1.DataBind();
        }
        int num = 0;
        public string filename = "";
        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
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
                        string serverpath = Server.MapPath("~/images/header/") + filename;
                        //将上传的文件另存为
                        fileUpload.PostedFile.SaveAs(serverpath);
                        this.pic.ImageUrl = "~/images/header/" + filename;
                        this.Label1.Text = filename;
                    }

                }
            }
            string uid = Session["id"].ToString();
            string sql = string.Format("update UserInfo set headImgUrl='{0}' where userId={1}", this.Label1.Text, uid);

            if (SQLHelper.ExecuteSql(sql) > 0)
            {
                head();
            }
        }




       
       
       
    }
}