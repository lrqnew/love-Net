using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//
using ZhiAiWang.Model;
using System.Data;
using System.Data.SqlClient;

namespace ZhiAiWang.DAL
    
{
   public class UserInfoServices
    {
        /// <summary>
        /// 注册新用户
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
       public static int AddUserInfo(UserInfo user)
       {
           string sql = string.Format(@"insert into UserInfo(petname,gender,education,height,salary,marriageState,phone,pwd,[address],birthday,email) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')",
                                       user.Petname, user.Gender, user.Education, user.Height, user.Salary, user.MarriageState, user.Phone, user.Pwd, user.Address, user.Birthday, user.Email);

           return SQLHelper.ExecuteSql(sql);
       }
       //public static bool AddUserInfo(UserInfo user)
       //{
       //    string sql = string.Format(@"insert into UserInfo(petname,gender,education,height,salary,marriageState,phone,pwd,[address],birthday,email) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')",
       //                                user.Petname, user.Gender, user.Education, user.Height, user.Salary, user.MarriageState, user.Phone, user.Pwd, user.Address, user.Birthday, user.Email);
       //    return DBHelper.Instance().ExcuteSql(sql);
       //}
       /// <summary>
       /// 登录
       /// </summary>
       /// <param name="uid"></param>
       /// <param name="pwd"></param>
       /// <returns></returns>
       public static bool Login(string uid, string pwd)
       {
           string sql = string.Format("select * from UserInfo where phone='{0}' and pwd='{1}' and userState=0", uid, pwd);
           DataSet ds = SQLHelper.Query(sql);
           DataTable dt = ds.Tables[0];
           if (dt.Rows.Count >= 1)
           {
               return true;
           }
           else
           {
               string sql1 = string.Format("select * from UserInfo where email='{0}' and pwd='{1}' and userState=0", uid, pwd);
               DataSet ds1 = SQLHelper.Query(sql1);
               DataTable dt1 = ds1.Tables[0];
               if (dt1.Rows.Count >= 1)
               {
                   return true;
               }
               else
               {
                   return false;
               }
           }

       }

       public static DataTable Session(string uid,string pwd)
       {
           string sql = string.Format("select * from UserInfo where phone='{0}' and pwd='{1}'", uid, pwd);
           DataSet ds = SQLHelper.Query(sql);
           DataTable dt = ds.Tables[0];
           if (dt.Rows.Count >= 1)
           {
               return dt;
           }
           else
           {
               string sql1 = string.Format("select * from UserInfo where email='{0}' and pwd='{1}'", uid, pwd);
               DataSet ds1 = SQLHelper.Query(sql1);
               DataTable dt1 = ds1.Tables[0];
               if (dt1.Rows.Count >= 1)
               {
                   return dt1;
               }
               else
               {
                   return null;
               }
           }
       }
       /// <summary>
       /// 查询邮箱是否存在
       /// </summary>
       /// <param name="email"></param>
       /// <returns></returns>
        public static bool SelectUserByEmail(string email)
        {
            string sql = string.Format("select * from UserInfo where email='{0}'",email);
            DataSet dst = SQLHelper.Query(sql);
            DataTable dt = dst.Tables[0];
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
       /// <summary>
       /// 查询手机是否存在
       /// </summary>
       /// <param name="phone"></param>
       /// <returns></returns>
        public static bool SelectUserInfoByPhone(string phone)
        {
            string sql = string.Format("select * from UserInfo where phone='{0}'", phone);
            DataSet dst = SQLHelper.Query(sql);
            DataTable dt = dst.Tables[0];
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
       /// <summary>
       /// 根据id查询个人资料
       /// </summary>
       /// <param name="uid"></param>
       /// <returns></returns>
        public static List<UserInfo> SelectPerSonalInfoByID(int uid)
        {
            string sql = string.Format("select * from UserInfo where userId='{0}'",uid);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            List<UserInfo> userInfoes = new List<UserInfo>();
            if (dt != null && dt.Rows.Count >= 1)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    UserInfo user = new UserInfo();
                    user.Address = dr["Address"].ToString();
                    user.Age = int.Parse(dr["Age"].ToString());
                    user.Birthday = dr["Birthday"].ToString();
                    user.Blood = dr["Blood"].ToString();
                    user.Education = dr["Education"].ToString();
                    user.Email = dr["Email"].ToString();
                    user.Family = dr["Family"].ToString();
                    user.Gender = dr["Gender"].ToString();
                    user.HeadImgUrl = dr["HeadImgUrl"].ToString();
                    //user.Height =Convert.ToInt32( dr["Height"].ToString());
                    //user.Hobby = dr["Hobby"].ToString();
                    //user.Major = dr["Major"].ToString();
                    //user.MarriageState = dr["MarriageState"].ToString();
                    //user.Member = Convert.ToBoolean(dr["Member"].ToString());
                    //user.Monologue = dr["Monologue"].ToString();
                    //user.Name = dr["Name"].ToString();
                    //user.Nation = dr["Nation"].ToString();
                    user.Petname = dr["Petname"].ToString();
                    //user.Phone = dr["Phone"].ToString();
                    //user.Pwd = dr["Pwd"].ToString();
                    //user.Salary = dr["Salary"].ToString();
                    //user.School = dr["School"].ToString();
                    //user.Star = dr["Star"].ToString();
                    user.UserId = int.Parse(dr["UserId"].ToString());
                    //user.Weights = int.Parse(dr["Weights"].ToString());
                    //user.Zodiac = dr["Zodiac"].ToString();
                    userInfoes.Add(user);
                }
                return userInfoes;
            }
            else
            {
                return null;
            }

        }
        /// <summary>
        /// 根据id查询个人资料
        /// </summary>
        /// <param name="uid"></param>
        /// <returns></returns>
        public static DataTable  SelectPerSonalInfoByIDReturnTable(int uid)
        {
            string sql = string.Format("select * from UserInfo where userId='{0}'", uid);
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            return dt;

        }
       /// <summary>
       /// 查询所有用户
       /// </summary>
       /// <returns></returns>
        public static DataTable SelectUserInfoAll()
        {
            string sql = string.Format("select userId,petname,gender,phone,email,education,member,userState,addTime from UserInfo");
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt = ds.Tables[0];
            return dt;
        }
        public static List<UserInfo> SelectUserListByPaging(int pageSize, int pageIndex)
        {
            SqlParameter[] paras = new SqlParameter[]
           {
             new SqlParameter("@pagesize",pageSize),
             new SqlParameter("@pageindex",pageIndex),
             new SqlParameter("@tablename","UserInfo"),
             new SqlParameter("@orderstr","addTime Desc"),
             new SqlParameter("@pk","userId"),
             new SqlParameter("@columns","*"),
          
           };

            DataTable dt = DBHelper.Instance().ExecuteSqlOrProc("GetDatasByPaging", paras);
            List<UserInfo> userList = new List<UserInfo>();
            if (dt != null && dt.Rows.Count >= 1)
            {

                foreach (DataRow dr in dt.Rows)
                {
                    UserInfo user = new UserInfo();
                    user.Address = dr["Address"].ToString();
                    user.Age = int.Parse(dr["Age"].ToString());
                    user.Birthday = dr["Birthday"].ToString();
                    user.Blood = dr["Blood"].ToString();
                    user.Education = dr["Education"].ToString();
                    user.Email = dr["Email"].ToString();
                    user.Family = dr["Family"].ToString();
                    user.Gender = dr["Gender"].ToString();
                    user.HeadImgUrl = dr["HeadImgUrl"].ToString();
                    user.Height = int.Parse(dr["Height"].ToString());
                    user.Hobby = dr["Hobby"].ToString();
                    user.Major = dr["Major"].ToString();
                    user.MarriageState = dr["MarriageState"].ToString();
                    user.Member = Convert.ToBoolean(dr["Member"].ToString());
                    user.Monologue = dr["Monologue"].ToString();
                    user.Name = dr["Name"].ToString();
                    user.Nation = dr["Nation"].ToString();
                    user.Petname = dr["Petname"].ToString();
                    user.Phone = dr["Phone"].ToString();
                    user.Pwd = dr["Pwd"].ToString();
                    user.Salary = dr["Salary"].ToString();
                    user.School = dr["School"].ToString();
                    user.Star = dr["Star"].ToString();
                    user.UserId = int.Parse(dr["UserId"].ToString());
                    user.Weights = int.Parse(dr["Weights"].ToString());
                    user.Zodiac = dr["Zodiac"].ToString();
                    user.AddTime = Convert.ToDateTime(dr["AddTime"].ToString());
                    user.UserState = Convert.ToBoolean(dr["UserState"].ToString());
                    userList.Add(user);
                }
                return userList;

            }
            else
            {
                return null;
            }
        }
       /// <summary>
       /// 查询所有停用的用户
       /// </summary>
       /// <returns></returns>
        public static DataTable SelectUserStopAll()
        {
            string sql = string.Format("select * from UserInfo where userState=1");
            DataSet ds = SQLHelper.Query(sql);
            DataTable dt=ds.Tables[0];
            return dt;
        }
       /// <summary>
       /// 根据id，停用或启用用户
       /// </summary>
       /// <param name="id"></param>
       /// <returns></returns>
        public static int UpdateUserState(int bit,int id)
        {
            string sql = string.Format("update UserInfo set userState='{0}' where userId='{1}'",bit,id);
            return SQLHelper.ExecuteSql(sql);
        }
       /// <summary>
       /// 根据id，删除用户
       /// </summary>
       /// <returns></returns>
        public static int DeleteUserById(int id)
        {
            string sql = string.Format("delete from UserInfo where userId='{0}'",id);
            return SQLHelper.ExecuteSql(sql);
        }
       /// <summary>
       /// 根据id，更改用户密码
       /// </summary>
       /// <param name="pwd"></param>
       /// <param name="id"></param>
       /// <returns></returns>
        public static int UpdateUserPwd(string pwd,int id)
        {
            string sql = string.Format("update UserInfo set pwd='{0}' where userId='{1}'",pwd,id);
            return SQLHelper.ExecuteSql(sql);
        }
        public static bool Updatemember(string id)
        {
            string sql = string.Format("update UserInfo set member=1 where userId={0}", id);
            return SQLHelper.ExecuteSql(sql)>0;
        }
    }
}
