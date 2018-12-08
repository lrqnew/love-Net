using System;
using System.Collections.Generic;
using System.Text;

namespace ZhiAiWang.Model
{
    public class CircleOfFriends
    {
        public CircleOfFriends() { }
        public CircleOfFriends(int userID, string cofContent)
        {
            this.userID = userID;
            this.cofContent = cofContent;
        }

        private int userID;

        public int UserID
        {
          get { return userID;}
          set { userID=value;}
        }
        private int cofID;

        public int CofID
        {
          get { return cofID;}
          set { cofID=value;}
        }
        private string cofContent;

        public string CofContent
        {
          get { return cofContent;}
          set { cofContent=value;}
        }
        private string imgUrl;

        public string ImgUrl
        {
          get { return imgUrl;}
          set { imgUrl=value;}
        }
        private string comments;

        public string Comments
        {
          get { return comments;}
          set { comments=value;}
        }
        private int praiseCount;

        public int PraiseCount
        {
          get { return praiseCount;}
          set { praiseCount=value;}
        }
    }
}
