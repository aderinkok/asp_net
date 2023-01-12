using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace hafta1
{
    public class Db
    {
        public static string serverName = "DESKTOP-B6V95TC\\SUNUC_ADI";
        public static SqlConnection baglanti = new SqlConnection(@"Data Source=" + serverName + ";Initial Catalog=asp_net;Integrated Security=True;MultipleActiveResultSets=True");

        public static string baglantiKontrol()
        {
            if (baglanti.State == System.Data.ConnectionState.Closed)
            {
                
                try
                {
                  baglanti.Open();

                }
                catch (Exception exc)
                {
                    return exc.Message;
                }

            }
            return "";
        }
    }
}