using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using ThoughtWorks.QRCode.Codec;
using System.Drawing;
using System.Drawing.Drawing2D;


namespace ZhiAiWang.UI
{
    /// <summary>
    ///-- =============================================
    ///-- Author:		hetao 
    ///-- Create date:  2018-01-25
    ///-- Description:	关于ThoughtWorks.QRCode开发的help类
    ///-- Remarks：     ThoughtWorks.QRCode.dll选择的版本号：1.0.4489.42329
    ///-- ============================================= 
    /// </summary>
    public class QRCodeHelp
    {

        /// <summary>
        /// 生成并保存二维码图片的方法
        /// </summary>
        /// <param name="str">输入的内容</param>
        /// <param name="strPath">图片保存的路径</param>
        /// <returns>返回文件名</returns>
        public static string CreateQRImg(string str, string strPath)
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
            //保存二维码图片在photos路径下
            //bt.Save(Server.MapPath("~/photos/") + filename + ".jpg");
            bt.Save(strPath + filename + ".jpg");
            ////图片控件要显示的二维码图片路径
            //this.Img_QRImg.ImageUrl = "~/photos/" + filename + ".jpg";
            return filename + ".jpg";
        }



        /// <summary>  
        /// 生成二维码.  
        /// </summary>  
        /// <param name="data">需要添加进去的文本</param>  
        /// <returns>返回图片</returns>  
        public static System.Drawing.Image CreateQRImg(String data)
        {
            QRCodeEncoder qrCodeEncoder = new QRCodeEncoder();
            qrCodeEncoder.QRCodeEncodeMode = QRCodeEncoder.ENCODE_MODE.BYTE;
            qrCodeEncoder.QRCodeScale = 5;
            qrCodeEncoder.QRCodeVersion = 7;
            //qrCodeEncoder.QRCodeVersion = 0;//此处设置为0   qrCodeEncoder.Encode(data, System.Text.Encoding.UTF8) 段代码就不会报数组越界的错误了

            qrCodeEncoder.QRCodeErrorCorrect = QRCodeEncoder.ERROR_CORRECTION.L;
            var pbImg = qrCodeEncoder.Encode(data, System.Text.Encoding.UTF8);
            var width = pbImg.Width / 10;
            var dwidth = width * 2;
            Bitmap bmp = new Bitmap(pbImg.Width + dwidth, pbImg.Height + dwidth);
            Graphics g = Graphics.FromImage(bmp);
            var c = System.Drawing.Color.White;
            g.FillRectangle(new SolidBrush(c), 0, 0, pbImg.Width + dwidth, pbImg.Height + dwidth);
            g.DrawImage(pbImg, width, width);
            g.Dispose();
            return bmp;
        }
        /// <summary>  
        /// 调用此函数后使此两种图片合并，源图片：生成的二维码；  目标图片：粘贴的Logo小图片
        /// </summary>  
        /// <param name="sourceImg">粘贴的源图片</param>  
        /// <param name="destImg">粘贴的目标图片，即logo图片</param>  
        public static System.Drawing.Image CreateQRImgLogo(System.Drawing.Image imgBack, string destImg)
        {

            System.Drawing.Image img = System.Drawing.Image.FromFile(destImg);        //照片图片    
            if (img.Height != 50 || img.Width != 50)
            {
                img = KiResizeImage(img, 50, 50, 0);
            }
            Graphics g = Graphics.FromImage(imgBack);

            g.DrawImage(imgBack, 0, 0, imgBack.Width, imgBack.Height);      //g.DrawImage(imgBack, 0, 0, 相框宽, 相框高);   

            //g.FillRectangle(System.Drawing.Brushes.White, imgBack.Width / 2 - img.Width / 2 - 1, imgBack.Width / 2 - img.Width / 2 - 1,1,1);//相片四周刷一层黑色边框  

            //g.DrawImage(img, 照片与相框的左边距, 照片与相框的上边距, 照片宽, 照片高);  

            g.DrawImage(img, imgBack.Width / 2 - img.Width / 2, imgBack.Width / 2 - img.Width / 2, img.Width, img.Height);
            GC.Collect();
            return imgBack;
        }


        /// <summary>  
        /// Resize图片  
        /// </summary>  
        /// <param name="bmp">原始Bitmap</param>  
        /// <param name="newW">新的宽度</param>  
        /// <param name="newH">新的高度</param>  
        /// <param name="Mode">保留着，暂时未用</param>  
        /// <returns>处理以后的图片</returns>  
        public static System.Drawing.Image KiResizeImage(System.Drawing.Image bmp, int newW, int newH, int Mode)
        {
            try
            {
                System.Drawing.Image b = new Bitmap(newW, newH);
                Graphics g = Graphics.FromImage(b);

                // 插值算法的质量  
                g.InterpolationMode = InterpolationMode.HighQualityBicubic;

                g.DrawImage(bmp, new Rectangle(0, 0, newW, newH), new Rectangle(0, 0, bmp.Width, bmp.Height), GraphicsUnit.Pixel);
                g.Dispose();

                return b;
            }
            catch
            {
                return null;
            }
        }

    }
}