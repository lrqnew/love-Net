/**
 *zfy 2014-11-29
 * 服务器信息获取
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.DirectoryServices;
using System.IO;

namespace ZhiAiWang.UI.Admin
{
    public class Servera
    {
        /// <summary>
        ///获取操作系统版本
        /// </summary>
        /// <returns></returns>
        public static string GetSystemVersion()
        {
            return Environment.OSVersion.ToString();
        }

        /// <summary>
        /// 服务器计算机名称
        /// </summary>
        /// <returns></returns>
        public static string GetServerName()
        {
            return HttpContext.Current.Server.MachineName;//服务器名称
        }

        /// <summary>
        /// 服务器IP地址  
        /// </summary>
        /// <returns></returns>
        public static string GetServerIp()
        {
            return HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"];
        }


        /// <summary>
        /// 客户端IP地址  
        /// </summary>
        /// <returns></returns>
        public static string GetClientIP()
        {
            string result = System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (null == result || result == String.Empty)
            {
                result = System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }


            if (null == result || result == String.Empty)
            {
                result = System.Web.HttpContext.Current.Request.UserHostAddress;
            }
            return result;
        }
        /// <summary>
        /// 服务器域名  
        /// </summary>
        /// <returns></returns>
        public static string GetDomainName()
        {
            return HttpContext.Current.Request.ServerVariables["SERVER_NAME"];
        }

        /// <summary>
        /// /.NET解释引擎版本
        /// </summary>
        /// <returns></returns>
        public static string GetDotNetVersion()
        {
            return ".NET CLR" + Environment.Version.Major + "." + Environment.Version.Minor + "." + Environment.Version.Build + "." + Environment.Version.Revision;
        }

        /// <summary>
        /// IIS版本
        /// </summary>
        /// <returns></returns>
        public static string GetServerSoftware()
        {
            return HttpContext.Current.Request.ServerVariables["SERVER_SOFTWARE"];
        }

        /// <summary>
        /// HTTP访问端口  
        /// </summary>
        /// <returns></returns>
        public static string GetServerPort()
        {
            return HttpContext.Current.Request.ServerVariables["SERVER_PORT"];
        }

        /// <summary>
        /// 虚拟目录的绝对路径  
        /// </summary>
        /// <returns></returns>
        public static string GetApplRhysicalPath()
        {
            return HttpContext.Current.Request.ServerVariables["APPL_RHYSICAL_PATH"];
        }

        /// <summary>
        /// 执行文件的绝对路径  
        /// </summary>
        /// <returns></returns>
        public static string GetPathTranslated()
        {
            return HttpContext.Current.Request.ServerVariables["PATH_TRANSLATED"];
        }

        /// <summary>
        /// 虚拟目录Session总数 
        /// </summary>
        /// <returns></returns>
        public static string GetSessionCount()
        {
            return HttpContext.Current.Session.Contents.Count.ToString();
        }

        /// <summary>
        /// 虚拟目录Application总数  
        /// </summary>
        /// <returns></returns>
        public static string GetApplicationCount()
        {
            return HttpContext.Current.Application.Contents.Count.ToString();
        }

        /// <summary>
        /// 服务器区域语言 
        /// </summary>
        /// <returns></returns>
        public static string GetAcceptLanguage()
        {
            return HttpContext.Current.Request.ServerVariables["HTTP_ACCEPT_LANGUAGE"];//服务器区域语言  
        }

        /// <summary>
        /// CPU个数    
        /// </summary>
        /// <returns></returns>
        public static string GetCpuCount()
        {
            return Environment.GetEnvironmentVariable("NUMBER_OF_PROCESSORS");//CPU个数    
        }

        /// <summary>
        /// CPU类型 
        /// </summary>
        /// <returns></returns>
        public static string GetCpuIdentifier()
        {
            return Environment.GetEnvironmentVariable("PROCESSOR_IDENTIFIER");//CPU个数    
        }

        /// <summary>
        /// 操作系统的版本信息: 
        /// </summary>
        /// <returns></returns>
        public static string GetSystemCheck()
        {
            string Agent = HttpContext.Current.Request.ServerVariables["HTTP_USER_AGENT"];

            if (Agent.IndexOf("NT 4.0") > 0)
            {
                return "Windows NT ";
            }
            else if (Agent.IndexOf("NT 5.0") > 0)
            {
                return "Windows 2000";
            }
            else if (Agent.IndexOf("NT 5.1") > 0)
            {
                return "Windows XP";
            }
            else if (Agent.IndexOf("NT 5.2") > 0)
            {
                return "Windows 2003";
            }
            else if (Agent.IndexOf("NT 6.0") > 0)
            {
                return "Windows Vista";
            }
            else if (Agent.IndexOf("WindowsCE") > 0)
            {
                return "Windows CE";
            }
            else if (Agent.IndexOf("NT") > 0)
            {
                return "Windows NT ";
            }
            else if (Agent.IndexOf("9x") > 0)
            {
                return "Windows ME";
            }
            else if (Agent.IndexOf("98") > 0)
            {
                return "Windows 98";
            }
            else if (Agent.IndexOf("95") > 0)
            {
                return "Windows 95";
            }
            else if (Agent.IndexOf("Win32") > 0)
            {
                return "Win32";
            }
            else if (Agent.IndexOf("Linux") > 0)
            {
                return "Linux";
            }
            else if (Agent.IndexOf("SunOS") > 0)
            {
                return "SunOS";
            }
            else if (Agent.IndexOf("Mac") > 0)
            {
                return "Mac";
            }
            else if (Agent.IndexOf("Linux") > 0)
            {
                return "Linux";
            }
            else if (Agent.IndexOf("Windows") > 0)
            {
                return "Windows";
            }
            return "unknow";

        }

        public static string GetIisVersion()
        {
            DirectoryEntry getEntity = new DirectoryEntry("IIS://localhost/W3SVC/INFO");

            string Version = getEntity.Properties["MajorIISVersionNumber"].Value.ToString();
            return Version;


        }
      
        /// <summary>

        /// 获取服务器系统信息

        /// </summary>

        public static string GetOSVersion()
        {

            OperatingSystem os = Environment.OSVersion;

            return os.ToString();

        }



        /// <summary>

        /// 获取服务器.net版本

        /// </summary>

        /// <returns></returns>

        public static string GetNetVersion()
        {

            return Environment.Version.ToString();

        }



        /// <summary>

        /// 获取数据库大小

        /// </summary>

        /// <returns></returns>

        public static string GetDataBaseLength()
        {

            string fileFullPath = HttpContext.Current.Server.MapPath("~/App_Data/XXX.mdf");

            FileInfo file = new FileInfo(fileFullPath);

            return (Convert.ToDouble(file.Length) / 1024 / 1024).ToString("N") + "M";

        }



        /// <summary>

        /// 递归文件目录，返回目录下所有文件大小

        /// </summary>

        /// <param name="d">传入的路径</param>

        /// <returns></returns>

        public static long DirSize(DirectoryInfo d)
        {

            long Size = 0;

            // 所有文件大小.

            FileInfo[] fis = d.GetFiles();

            foreach (FileInfo fi in fis)
            {

                Size += fi.Length;

            }

            // 遍历出当前目录的所有文件夹.

            DirectoryInfo[] dis = d.GetDirectories();

            foreach (DirectoryInfo di in dis)
            {

                Size += DirSize(di);   //这就用到递归了，调用父方法,注意，这里并不是直接返回值，而是调用父返回来的

            }

            return (Size);

        }



        /// <summary>

        /// 调用DirSize方法

        /// </summary>

        /// <returns></returns>

        public static string GetDirSize()
        {

            string fullPath = HttpContext.Current.Server.MapPath("~/");

            DirectoryInfo d = new DirectoryInfo(fullPath);

            return (Convert.ToDouble(DirSize(d)) / 1024 / 1024).ToString("N") + "M";

        }




      

        /// <summary>

        /// 服务器名称

        /// </summary>

        public static string MachineName
        {

            get { return HttpContext.Current.Server.MachineName; }

        }



        /// <summary>

        /// 服务器操作系统

        /// </summary>

        public static string ServiveSystem
        {

            get { return GetOSVersion(); }

        }



        /// <summary>

        /// 服务器IP地址

        /// </summary>

        public static string ServiceIP
        {

            get { return HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"]; }

        }



        /// <summary>

        /// 网站端口号

        /// </summary>

        public static string ServicePort
        {

            get { return HttpContext.Current.Request.ServerVariables["SERVER_PORT"]; }

        }



        /// <summary>

        /// 服务器IIS版本

        /// </summary>

        public static string ServiceIIS
        {

            get { return HttpContext.Current.Request.ServerVariables["SERVER_SOFTWARE"]; }

        }



        /// <summary>

        /// 服务器.NET解释引擎版本

        /// </summary>

        public static string ServiceNetVersion
        {

            get { return GetNetVersion(); }

        }



        /// <summary>

        /// 服务器时间

        /// </summary>

        public static string ServiceTime
        {

            get { return DateTime.Now.ToString(); }

        }



        /// <summary>

        /// 网站绝对路径

        /// </summary>

        public static string ServicePath
        {

            get { return HttpContext.Current.Request.ServerVariables["PATH_TRANSLATED"].ToString(); }

        }



        /// <summary>

        /// 数据库大小

        /// </summary>

        public static string DataBaseLength
        {

            get { return GetDataBaseLength(); }

        }



        /// <summary>

        /// 获取程序占用空间大小

        /// </summary>

        public static string GetSystemLength
        {

            get { return GetDirSize(); }

        }
    }
}