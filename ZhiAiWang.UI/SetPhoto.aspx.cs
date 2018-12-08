using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI
{
    public partial class SetPhoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DatasBind();
            }
            
        }
        private void DatasBind()
        {
            string uid = Session["id"].ToString();
            string sql = string.Format("select pictureUrl,picstar,pictureID from PictureInfo where userID='{0}'", uid);
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];

            this.AspNetPager1.RecordCount = dt.Rows.Count;
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = dt.DefaultView;
            this.DataList1.DataSource = pds;
            this.DataList1.DataBind();
        }
        protected string star(int picstar)
        {
            string result = string.Empty;
            switch (picstar)
            {
                case 0:
                    result = "图片正在审核中.....";
                    break;
                case 1:
                    result = "图片已通过审核";
                    break;
                case 2:
                    result = "抱歉!该图片未通过审核" +
                        "<br/>系统将在24小时内删除" +
                        "<br/>该图片";
                    break;
            }
            return result;
        }
        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            DatasBind();
        }

    }
}