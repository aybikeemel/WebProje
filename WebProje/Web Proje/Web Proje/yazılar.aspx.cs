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
    public partial class yazılar : System.Web.UI.Page
    {

        SqlBaglantisi baglan = new SqlBaglantisi();
        string makaleID = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)

                //silme
                makaleID = Request.QueryString["makaleID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmdmsil = new SqlCommand("Delete from Makale where makaleID='" + makaleID+"'", baglan.baglan());
                cmdmsil.ExecuteNonQuery();
            }

            {
                pnl_yaziEkle.Visible = false;
                pnl_yaziduzenle.Visible = false;

                //kategorileri getir
                SqlCommand cmdkgetir = new SqlCommand("Select * from kategori", baglan.baglan());
                SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

                ddl_kategori.DataTextField = "kategoriAd";
                ddl_kategori.DataValueField = "kategoriID";
                ddl_kategori.DataSource = drkgetir;
                ddl_kategori.DataBind();


                //makale getir

                SqlCommand cmdmgetir = new SqlCommand("Select * from Makale", baglan.baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();

                dl_yazigetir.DataSource = drmgetir;
                dl_yazigetir.DataBind();

            }
        }

        protected void btn_meArtı_Click(object sender, EventArgs e)
        {
            pnl_yaziEkle.Visible = true;
        }

        protected void btn_yeeksi_Click(object sender, EventArgs e)
        {
            pnl_yaziEkle.Visible = false;
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_yaziekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdmekle = new SqlCommand("insert into Makale(makaleBaslik,makaleOzet,makaleIcerik,kategoriID) Values ('"+txt_yazibaslik.Text + "','" + tb_yaziozet.Text + "','" + tb_yaziicerik.Text + "','" + ddl_kategori.SelectedValue + "')", baglan.baglan());
            cmdmekle.ExecuteNonQuery();

            Response.Redirect("yazılar.aspx");

       
        }

        protected void btn_mdEksi_Click(object sender, EventArgs e)
        {
            pnl_yaziduzenle.Visible = false;

        }

        protected void btn_mdArti_Click(object sender, EventArgs e)
        {
            pnl_yaziduzenle.Visible = true;
        }
    }
}