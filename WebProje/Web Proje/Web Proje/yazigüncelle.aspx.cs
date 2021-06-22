using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Proje
{
    public partial class yazigüncelle : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string makaleID = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];

            if (Page.IsPostBack==false)
            {
                SqlCommand cmdmgetir = new SqlCommand("Select * from Makale where makaleID='" + makaleID + "'", baglan.baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();

                DataTable dtmgetir = new DataTable("tablo");
                dtmgetir.Load(drmgetir);
                if (dtmgetir.Rows.Count == 0) return;

                DataRow row =dtmgetir.Rows[0];
                txt_yazibaslik.Text = row["makaleBaslik"].ToString();
                txt_yaziozet.Text =row["makaleOzet"].ToString();
                txt_yaziicerik.Text = row["makaleIcerik"].ToString();
                txt_yorumsayisi.Text = row["makaleYorumSayisi"].ToString();

            }

        }

        protected void btn_yaziguncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdyguncelle = new SqlCommand("Update Makale Set makalebaslik='" + txt_yazibaslik.Text + "',makaleOzet='" + txt_yaziozet.Text + "',makaleIcerik='" + txt_yaziicerik.Text + "',makaleYorumSayisi='"+txt_yorumsayisi.Text + "' where makaleID='" + makaleID + "'", baglan.baglan());
            cmdyguncelle.ExecuteNonQuery();
            Response.Redirect("yazılar.aspx");
        }
    }
}