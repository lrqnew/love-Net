using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//
using ZhiAiWang.Model;
using ZhiAiWang.DAL;
using System.Data;
namespace ZhiAiWang.BLL
{
    public class UserInfoManager
    {
        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static int Register(UserInfo user)
        {
            return UserInfoServices.AddUserInfo(user);
        }

        //public static bool Register(UserInfo user)
        //{
        //    return UserInfoServices.AddUserInfo(user);
        //}
        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="uid"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public static bool Login(string uid,string pwd) 
        {
            return UserInfoServices.Login(uid,pwd);
        }

        public static DataTable Session(string uid, string pwd)
        {
            return UserInfoServices.Session(uid, pwd);
        }
        /// <summary>
        /// 查询邮箱是否存在
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static bool  SelectUserInfoByEmail(string  email)
        {
            return UserInfoServices.SelectUserByEmail(email);
        }
        /// <summary>
        /// 查询手机是否存在
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static bool SelectUserInfoByPhone(string phone)
        {
            return UserInfoServices.SelectUserInfoByPhone(phone);
        }
        /// <summary>
        /// 根据id查询用户信息
        /// </summary>
        /// <param name="uid"></param>
        /// <returns></returns>
        public static List<UserInfo> SelectInfoByID(int uid)
        {
            return UserInfoServices.SelectPerSonalInfoByID(uid);
        }
        /// <summary>
        /// 根据id查询个人资料
        /// </summary>
        /// <param name="uid"></param>
        /// <returns></returns>
        public static DataTable SelectPerSonalInfoByIDReturnTable(int uid)
        {

            return UserInfoServices.SelectPerSonalInfoByIDReturnTable(uid);

        }
        /// <summary>
        /// 查询所有用户
        /// </summary>
        /// <returns></returns>
        public static DataTable SelectUserInfoAll()
        {

            return UserInfoServices.SelectUserInfoAll();
        }
        public static List<UserInfo> SelectUserListByPaging(int pageSize, int pageIndex)
        {
            return UserInfoServices.SelectUserListByPaging(pageSize, pageIndex);
        }
        /// <summary>
        /// 查询所有停用的用户
        /// </summary>
        /// <returns></returns>
        public static DataTable SelectUserStopAll()
        {
            return UserInfoServices.SelectUserStopAll();
        }
        /// <summary>
        /// 根据id，停用用户
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int UpdateUserState(int bit,int id)
        {

            return UserInfoServices.UpdateUserState(bit,id);
        }
        /// <summary>
        /// 根据id，删除用户
        /// </summary>
        /// <returns></returns>
        public static int DeleteUserById(int id)
        {

            return UserInfoServices.DeleteUserById(id);
        }
        /// <summary>
        /// 根据id，更改用户密码
        /// </summary>
        /// <param name="pwd"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int UpdateUserPwd(string pwd, int id)
        {

            return UserInfoServices.UpdateUserPwd(pwd,id);
        }
        /// <summary>
        /// 修改会员状态
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static bool Updatemember(string id)
        {

            return UserInfoServices.Updatemember(id);
        }
    }
}
