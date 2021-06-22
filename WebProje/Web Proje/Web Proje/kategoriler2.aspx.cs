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
    public partial class kategoriler2 : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();
        string kategoriID = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)

        {
            kategoriID = Request.QueryString["kategoriID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmdsil = new SqlCommand("delete from Kategori where KategoriID='" + kategoriID + "'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
            }



            if (Page.IsPostBack == false)
            {
                pnl_kategoriEkle.Visible = false;
                pnl_kategoriDuzenle.Visible = false;

            }

            //kategoriler dataliste çekme

            SqlCommand cmdkgetir = new SqlCommand("select * from Kategori", baglan.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

            dl_kategoriGetir.DataSource = drkgetir;
            dl_kategoriGetir.DataBind();
        }


        protected void btn_keArtı_Click(object sender, EventArgs e)
        {
            pnl_kategoriEkle.Visible = true;

        }

        protected void btn_keeksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriEkle.Visible = false;

        }

        protected void btn_kategoriEkle_Click(object sender, EventArgs e)
        {

            //   if (fu_kategoriResim.HasFile)
            //{
            // fu_kategoriResim.SaveAs(Server.MapPath("/kresim/"+fu_kategoriResim.FileName));

            SqlCommand cmdkekle = new SqlCommand("insert into Kategori(kategoriAd,kategoriSira) Values('" + txt_KategoriAdi.Text + "','" + txtSira.Text + "')", baglan.baglan());
            cmdkekle.ExecuteNonQuery();
            Response.Redirect("kategoriler2.aspx");
            //   }
            // SqlCommand cmdkekle = new SqlCommand("insert into Kategori(kategoriAd,kategoriSira,kategoriResim) Values('" + txt_KategoriAdi.Text + "','" + txtSira.Text + "','/kresim/" + fu_kategoriResim.FileName + "')", baglan.baglan());

            /*  else
              {

                  btn_kategoriEkle.Text = "Resim Ekle!";
              }
            */
        }

        protected void btn_kdArti_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = true;

        }

        protected void btn_kdEksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = false;

        }
    }
}