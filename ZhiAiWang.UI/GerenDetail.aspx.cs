using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace ZhiAiWang.UI
{
    public partial class GerenDetail : System.Web.UI.Page
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
            string sql = string.Format("select * from UserInfo where userId={0}", userid);
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            string name = dt.Rows[0][12].ToString();//真实名字
            string sex = dt.Rows[0][2].ToString();//性别
            string education = dt.Rows[0][3].ToString();//学历
            string age = dt.Rows[0][4].ToString();//年龄
            string weights = dt.Rows[0][14].ToString();//体重
            string zodiac = dt.Rows[0][15].ToString();//生肖
            string Adress = dt.Rows[0][23].ToString();//地址
            string star = dt.Rows[0][16].ToString();//星座
            string blood = dt.Rows[0][17].ToString();//血型
            string nation = dt.Rows[0][18].ToString();//民族
            string school = dt.Rows[0][19].ToString();//毕业学校
            string weixinID = dt.Rows[0][26].ToString();//微信号
            this.jiguan.Value = Adress;
            this.DropDownList5.Text = weights;
            this.DropDownList4.Text = zodiac;
            this.DropDownList3.Text = star;
            this.DropDownList1.Text = blood;
            this.DropDownList2.Text = nation;
            this.school.Value = school;
            this.Weixin.Text = weixinID;
            this.TextBox1.Text = Session["id"].ToString();
            this.name.Value = name;
            this.jiguan.Value = Adress;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = string.Format("update UserInfo set name='{0}',family='{1}',weights='{2}',zodiac='{3}',star='{4}',blood='{5}',nation='{6}',wwixinID='{7}',school='{8}' where userId={9}"
                ,this.name.Value,this.jiguan.Value, DropDownList5.SelectedValue.ToString(), DropDownList4.SelectedValue.ToString(), DropDownList3.SelectedValue.ToString(), DropDownList1.SelectedValue.ToString(), DropDownList2.SelectedValue.ToString(),this.Weixin.Text,this.school.Value,TextBox1.Text);
            if (SQLHelper.ExecuteSql(sql)>0)
            {
                Response.Write("<script>alert('信息已更改成功！')</script>");

            }
        }
    }
}