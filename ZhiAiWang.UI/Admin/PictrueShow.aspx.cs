using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhiAiWang.UI.admin
{
    public partial class PictrueShow : System.Web.UI.Page
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
            string sql = string.Format("select * from PictureInfo");
            SQLHelper.Query(sql);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];

            this.AspNetPager1.RecordCount = dt.Rows.Count;
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = dt.DefaultView;
            this.Repeater1.DataSource = pds;
            this.Repeater1.DataBind();
        }

        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            load();
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
                    result = "图片未通过审核";
                    break;
            }
            return result;
        }
    }
}