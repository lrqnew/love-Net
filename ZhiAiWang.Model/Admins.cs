using System;
using System.Collections.Generic;
using System.Text;

namespace ZhiAiWang.Model
{
    public class Admins
    {
        private int adminid;

        public int Adminid
        {
          get { return adminid;}
          set { adminid=value;}
        }
        private string number;

        public string Number
        {
          get { return number;}
          set { number=value;}
        }
        private string pwd;

        public string Pwd
        {
          get { return pwd;}
          set { pwd=value;}
        }
    }
}
