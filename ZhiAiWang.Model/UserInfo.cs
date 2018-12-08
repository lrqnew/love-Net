using System;
using System.Collections.Generic;
using System.Text;

namespace ZhiAiWang.Model
{
    public class UserInfo
    {
        public UserInfo()
        { }
        public UserInfo(string petname, string gender, string education, int height, string salary, string marriageState,
            string phone, string pwd, string address, string birthday, string email)
        {

            this.petname = petname;
            this.gender = gender;
            this.education = education;
            this.height = height;
            this.salary = salary;
            this.marriageState = marriageState;
            this.phone = phone;
            this.pwd = pwd;
            this.address = address;
            this.birthday = birthday;
            this.email = email;
        }

        private int userId;

        public int UserId
        {
          get { return userId;}
          set { userId=value;}
        }
        private string petname;

        public string Petname
        {
          get { return petname;}
          set { petname=value;}
        }
        private string gender;

        public string Gender
        {
          get { return gender;}
          set { gender=value;}
        }
        private string education;

        public string Education
        {
          get { return education;}
          set { education=value;}
        }
        private int age;

        public int Age
        {
          get { return age;}
          set { age=value;}
        }
        private int height;

        public int Height
        {
          get { return height;}
          set { height=value;}
        }
        private string salary;

        public string Salary
        {
          get { return salary;}
          set { salary=value;}
        }
        private string marriageState;

        public string MarriageState
        {
          get { return marriageState;}
          set { marriageState=value;}
        }
        private string phone;

        public string Phone
        {
          get { return phone;}
          set { phone=value;}
        }
        private string pwd;

        public string Pwd
        {
          get { return pwd;}
          set { pwd=value;}
        }
        private string headImgUrl;

        public string HeadImgUrl
        {
          get { return headImgUrl;}
          set { headImgUrl=value;}
        }
        private bool member;

        public bool Member
        {
          get { return member;}
          set { member=value;}
        }
        private string name;

        public string Name
        {
          get { return name;}
          set { name=value;}
        }
        private string monologue;

        public string Monologue
        {
          get { return monologue;}
          set { monologue=value;}
        }
        private int weights;

        public int Weights
        {
          get { return weights;}
          set { weights=value;}
        }
        private string zodiac;

        public string Zodiac
        {
          get { return zodiac;}
          set { zodiac=value;}
        }
        private string star;

        public string Star
        {
          get { return star;}
          set { star=value;}
        }
        private string blood;

        public string Blood
        {
          get { return blood;}
          set { blood=value;}
        }
        private string nation;

        public string Nation
        {
          get { return nation;}
          set { nation=value;}
        }
        private string school;

        public string School
        {
          get { return school;}
          set { school=value;}
        }
        private string major;

        public string Major
        {
          get { return major;}
          set { major=value;}
        }
        private string hobby;

        public string Hobby
        {
          get { return hobby;}
          set { hobby=value;}
        }
        private string family;

        public string Family
        {
          get { return family;}
          set { family=value;}
        }
        private string address;

        public string Address
        {
          get { return address;}
          set { address=value;}
        }
        private string birthday;

        public string Birthday
        {
          get { return birthday;}
          set { birthday=value;}
        }
        private string email;

        public string Email
        {
          get { return email;}
          set { email=value;}
        }
        private bool userState;

        public bool UserState
        {
          get { return userState;}
          set { userState=value;}
        }
        private DateTime addTime;

        public DateTime AddTime
        {
          get { return addTime;}
          set { addTime=value;}
        }
    }
}
