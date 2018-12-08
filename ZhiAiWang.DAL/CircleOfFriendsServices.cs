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
   public class CircleOfFriendsServices
    {
       /// <summary>
       /// 用户发布消息
       /// </summary>
       /// <param name="cir"></param>
       /// <returns></returns>
       public static int SendMesg(CircleOfFriends cir)
       {
           string sql = string.Format("insert into  CircleOfFriends(userID,cofContent,SendTime) values('{0}','{1}','{2}')", cir.UserID, cir.CofContent,DateTime.Now);
           return SQLHelper.ExecuteSql(sql);
          
       }
       /// <summary>
       /// 查询发布的消息
       /// </summary>
       /// <returns></returns>
       public static DataTable SelectMesg()
       {
           string sql = string.Format("select u.headImgUrl,u.petname,u.age,u.[address],u.marriageState,c.cofContent,c.SendTime,cofID from UserInfo u,CircleOfFriends c where u.userId=c.userID");
           DataSet ds = SQLHelper.Query(sql);
           DataTable dt = ds.Tables[0];
           return dt;
       }
       /// <summary>
       /// 评论
       /// </summary>
       /// <returns></returns>
       public static int Comments(Answer answer)
       {
           string sql = string.Format("insert into Answer(cofsID,ansContent,ansUserID,ansDatetime) values('{0}','{1}','{2}','{3}')", answer.CofsID, answer.AnsContent, answer.AnsUserID, DateTime.Now);
           return  SQLHelper.ExecuteSql(sql);

       }
       /// <summary>
       /// 根据消息id查询发布的消息
       /// </summary>
       /// <param name="cofId"></param>
       /// <returns></returns>
       public static DataTable SelectByCofId(int cofId)
       {
           string sql = string.Format("select u.headImgUrl,u.petname,u.age,u.[address],u.marriageState,c.cofContent,c.SendTime,cofID from UserInfo u,CircleOfFriends c where u.userId=c.userID and cofID='{0}'", cofId);
           DataSet ds = SQLHelper.Query(sql);
           DataTable dt = ds.Tables[0];
           return dt;
       }
       /// <summary>
       /// 查询所有发布的消息
       /// </summary>
       /// <returns></returns>
       public static DataTable SelectAllComments()
       {
           string sql = string.Format("select UserInfo.userID,cofID, petname,cofContent,SendTime from UserInfo ,CircleOfFriends  where UserInfo.userId=CircleOfFriends.userID");
           DataSet ds = SQLHelper.Query(sql);
           DataTable dt = ds.Tables[0];
           return dt;
       }
       /// <summary>
       /// 根据消息id删除
       /// </summary>
       /// <param name="id"></param>
       /// <returns></returns>
       public static int DeleteMasgById(int id)
       {
           string sql1 = string.Format("delete from Answer where cofsID='{0}'", id);
           SQLHelper.ExecuteSql(sql1);
           string sql = string.Format("delete from CircleOfFriends where cofID='{0}'", id);
           return SQLHelper.ExecuteSql(sql);
       }
       /// <summary>
       /// 根据id删除评论
       /// </summary>
       /// <param name="id"></param>
       /// <returns></returns>
       public static int DeleteCommetByansID(int id)
       {
           string sql = string.Format("delete from Answer where ansID='{0}'",id);
           return SQLHelper.ExecuteSql(sql);
       }
       /// <summary>
       /// 查询评论
       /// </summary>
       /// <returns></returns>
       public static DataTable SelectAnswerAll()
       {
           string sql = string.Format("select ansID,ansContent,petname,ansDatetime from Answer,UserInfo where Answer.ansUserID=UserInfo.userId");
           DataSet ds = SQLHelper.Query(sql);
           DataTable dt = ds.Tables[0];
           return dt;
       }
    }
}
