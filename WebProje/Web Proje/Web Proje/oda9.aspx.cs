using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Web_Proje
{
    public partial class oda9 : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select wikiIcerik from Wiki where wikiBaslik = 'Çocuk Odası'", baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();
            lbl_icerik.Text = dr["wikiIcerik"].ToString();


            SqlCommand cmd2 = new SqlCommand("Select wikiResim from Wiki where wikiBaslik = 'Çocuk Odası'", baglan.baglan());
            SqlDataReader dr2 = cmd2.ExecuteReader();


            if (dr2.Read())
            {
                String resim = dr2["wikiResim"].ToString();
                Image1.ImageUrl = resim;

            }

        }
    }
}