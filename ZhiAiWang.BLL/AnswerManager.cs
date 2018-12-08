using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZhiAiWang.DAL;
using System.Data;
using System.Data.SqlClient;
namespace ZhiAiWang.BLL
{
    public  class AnswerManager
    {
        public static DataTable SelectAnswer(int cofsId)
        {
            return AnswerServives.SelectAnswer(cofsId);
        }
    }
}
