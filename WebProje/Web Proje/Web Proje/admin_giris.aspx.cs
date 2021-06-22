using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Proje
{
    public partial class admin_giris : System.Web.UI.Page
    {
        
        SqlBaglantisi baglan = new SqlBaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("Select * from Admin where adminKullanici='"+txt_kullanici.Text+"'and adminSifre='"+txt_sifre.Text+"'",baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();
             
            
                        if (dr.Read())
                        {             
                            Response.Redirect("admin2.aspx");

                        }
                        else
                        {
                            lbl_bilgi.Text = "Hatalı Giriş Yaptınız!";
                        }
        }

    }
}