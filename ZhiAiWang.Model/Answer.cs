using System;
using System.Collections.Generic;
using System.Text;

namespace ZhiAiWang.Model
{
    public class Answer
    {
        public Answer() { }
        public Answer(int cofsID, string ansContent, int ansUserID)
        {
            this.cofsID = cofsID;
            this.ansContent = ansContent;
            this.ansUserID = ansUserID;
        }
        private int ansID;

        public int AnsID
        {
          get { return ansID;}
          set { ansID=value;}
        }
        private int ansQuesstionID;

        public int AnsQuesstionID
        {
          get { return ansQuesstionID;}
          set { ansQuesstionID=value;}
        }
        private int cofsID;

        public int CofsID
        {
          get { return cofsID;}
          set { cofsID=value;}
        }
        private string ansContent;

        public string AnsContent
        {
          get { return ansContent;}
          set { ansContent=value;}
        }
        private int ansUserID;

        public int AnsUserID
        {
          get { return ansUserID;}
          set { ansUserID=value;}
        }
        private DateTime ansDatetime;

        public DateTime AnsDatetime
        {
          get { return ansDatetime;}
          set { ansDatetime=value;}
        }
    }
}
