using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//
using ZhiAiWang.DAL;
using ZhiAiWang.Model;
namespace ZhiAiWang.BLL
{
   public  class CircleOfFriendsManager
    {
       /// <summary>
       /// 发布信息
       /// </summary>
       /// <param name="cir"></param>
       /// <returns></returns>
       public static int SendMesg(CircleOfFriends cir)
       {
           return CircleOfFriendsServices.SendMesg(cir);
       }
       /// <summary>
       /// 查询发布的信息
       /// </summary>
       /// <returns></returns>
       public static DataTable SelectMesg()
       {
           return CircleOfFriendsServices.SelectMesg();
       }
       /// <summary>
       /// 评论
       /// </summary>
       /// <param name="answer"></param>
       /// <returns></returns>
       public static int Comments(Answer answer)
       {
           return CircleOfFriendsServices.Comments(answer);
       }
        /// <summary>
       /// 根据消息id查询发布的消息
       /// </summary>
       /// <param name="cofId"></param>
       /// <returns></returns>
       public static DataTable SelectByCofId(int cofId)
       {
           return CircleOfFriendsServices.SelectByCofId(cofId);
       }
       /// <summary>
       /// 查询所有发布的消息
       /// </summary>
       /// <returns></returns>
       public static DataTable SelectAllComments()
       {
          
           return CircleOfFriendsServices.SelectAllComments();
       }
       /// <summary>
       /// 根据消息id删除
       /// </summary>
       /// <param name="id"></param>
       /// <returns></returns>
       public static int DeleteMasgById(int id)
       {

           return CircleOfFriendsServices.DeleteMasgById(id);
       }
       /// <summary>
       /// 根据id删除评论
       /// </summary>
       /// <param name="id"></param>
       /// <returns></returns>
       public static int DeleteCommetByansID(int id)
       {

           return CircleOfFriendsServices.DeleteCommetByansID(id);
       }
       /// <summary>
       /// 查询评论
       /// </summary>
       /// <returns></returns>
       public static DataTable SelectAnswerAll()
       {
           return CircleOfFriendsServices.SelectAnswerAll();
       }
    }
}
