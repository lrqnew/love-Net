using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ZhiAiWang.Model
{
   public class Email
    {
        public int emailId { get; set; }
        public string emailContent { get; set; }
        public string smtp { get; set; }
        public string emailUid { get; set; }
        public string emailPwd { get; set; }
        public string emailName { get; set; }
    }
}
