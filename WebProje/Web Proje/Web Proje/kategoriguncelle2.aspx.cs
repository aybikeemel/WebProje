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
    public partial class kategoriguncelle2 : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string kategoriID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["kategoriID"];
            if (Page.IsPostBack == false)
            {

                SqlCommand cmdkguncelle = new SqlCommand("Select * from Kategori where kategoriID='" + kategoriID + "'", baglan.baglan());
                SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();

                DataTable dtkguncelle = new DataTable("tablo");
                dtkguncelle.Load(drkguncelle);
                if (dtkguncelle.Rows.Count == 0) return;
                DataRow row = dtkguncelle.Rows[0];
                txt_kAdi.Text = row["kategoriAd"].ToString();
                txt_kSira.Text = row["kategoriSira"].ToString();
                txt_kAdet.Text = row["kategoriAdet"].ToString();



            }

        }

        protected void btn_kguncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdguncelle = new SqlCommand("Update Kategori Set kategoriAd='" + txt_kAdi.Text + "',kategoriSira='" + txt_kSira.Text + "',kategoriAdet='" + txt_kAdet.Text + "' where kategoriID='" + kategoriID + "'", baglan.baglan());
            cmdguncelle.ExecuteNonQuery();
            Response.Redirect("kategoriler2.aspx");
        }

    }
}