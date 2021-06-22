using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Web_Proje
{
    public class SqlBaglantisi
    {
        
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=MSI\\MSSQLSERVER2; Initial Catalog=wikiDB; Integrated Security=true");
            baglanti.Open();

            SqlConnection.ClearPool(baglanti);
            SqlConnection.ClearAllPools();
            return (baglanti);
            
        }




    }
}