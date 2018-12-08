using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ThoughtWorks.QRCode.Codec;

namespace ZhiAiWang.UI
{
    public partial class UserData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                string userId = Request["userId"];
                if (userId != null)
                {
                    string sql = string.Format("select * from UserInfo where userId={0}", userId);
                    DataTable dt = SQLHelper.Query(sql).Tables[0];
                    petname.Text = dt.Rows[0]["petname"].ToString();
                       lab_userId.Text= dt.Rows[0]["userId"].ToString();
                    lab_age.Text= dt.Rows[0]["age"].ToString();
                    lab_marriageState.Text= dt.Rows[0]["marriageState"].ToString();

                    lab_height.Text = dt.Rows[0]["height"].ToString();
                    lab_education.Text = dt.Rows[0]["education"].ToString();
                    lab_salary.Text = dt.Rows[0]["salary"].ToString();
                    lab_address.Text = dt.Rows[0]["address"].ToString();
                    lab_monologue.Text = dt.Rows[0]["monologue"].ToString();
                    lab_gender.Text= dt.Rows[0]["gender"].ToString();
                    Lab_blood.Text = dt.Rows[0]["blood"].ToString();
                    lab_major.Text= dt.Rows[0]["major"].ToString();
                    this.Winxin.Text= dt.Rows[0]["wwixinID"].ToString();
                    Image1.ImageUrl ="images/header/"+ dt.Rows[0]["headImgUrl"].ToString();
                    if (Session["uid"]!=null) 
                    {
                        lab_family.Text= dt.Rows[0]["family"].ToString();
                    }
                    else
                    {
                        lab_family.Text = "登录可见";
                    }
                    Lab_school.Text= dt.Rows[0]["school"].ToString();
                    Lab_jg.Text= dt.Rows[0]["address"].ToString();
                    Lab_zodiac.Text= dt.Rows[0]["zodiac"].ToString();
                    Lab_nation.Text = dt.Rows[0]["nation"].ToString();
                    Lab_star.Text= dt.Rows[0]["star"].ToString();
                    Lab_weights.Text= dt.Rows[0]["weights"].ToString();

                    info1.Text = dt.Rows[0]["petname"].ToString();
                    info2.Text = (dt.Rows[0]["age"].ToString() + "岁");
                    info3.Text = dt.Rows[0]["address"].ToString();

                    uid.Text = (Session["uid"]==null?00:Session["id"]).ToString();
                    img1.Src = "images/header/" + dt.Rows[0]["headImgUrl"].ToString();
                }
                repeaterBind();
                pic();
            }
        }
        void repeaterBind()
        {
            DataTable dt = SQLHelper.Query("select top 4 * from HelloContent order by newid()").Tables[0];
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        void pic()
        {
            Bitmap bt;
            bt = (System.Drawing.Bitmap)QRCodeHelp.CreateQRImgLogo(QRCodeHelp.CreateQRImg(this.Winxin.Text), Server.MapPath("~/images/UserData/" + "woman" + ".jpg"));
            string filename = DateTime.Now.ToString("yyyyMMddHHmmssfff");
            //保存二维码图片在images路径下
            bt.Save(Server.MapPath("~/images/") + filename + ".jpg");
            //图片控件要显示的二维码图片路径
            this.Img_QRImg.ImageUrl = "~/images/" + filename + ".jpg";
        }
        /// <summary>
        /// 
        /// 生成并保存二维码图片的方法
        /// </summary>
        /// <param name="str">输入的内容</param>
        private void CreateQRImg(string str)
        {
            Bitmap bt;
            string enCodeString = str;
            //生成设置编码实例
            QRCodeEncoder qrCodeEncoder = new QRCodeEncoder();
            //设置二维码的规模，默认4
            qrCodeEncoder.QRCodeScale = 4;
            //设置二维码的版本，默认7
            qrCodeEncoder.QRCodeVersion = 7;
            //设置错误校验级别，默认中等
            qrCodeEncoder.QRCodeErrorCorrect = QRCodeEncoder.ERROR_CORRECTION.M;
            //生成二维码图片
            bt = qrCodeEncoder.Encode(enCodeString, Encoding.UTF8);
            //二维码图片的名称
            string filename = DateTime.Now.ToString("yyyyMMddHHmmssfff");
            //保存二维码图片在images路径下
            bt.Save(Server.MapPath("~/images/") + filename + ".jpg");
            //图片控件要显示的二维码图片路径
            this.Img_QRImg.ImageUrl = "~/images/" + filename + ".jpg";
        }
        
    }
}