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
    public partial class forum : System.Web.UI.Page
    {
        SqlBaglantisi baglan = new SqlBaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmdkgetir = new SqlCommand("select * from Yorum", baglan.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

            DataList1.DataSource = drkgetir;
            DataList1.DataBind();
        }

        protected void btn_yorumEkle_Click(object sender, EventArgs e)
        {

            SqlCommand cmdYorumekle = new SqlCommand("insert into Yorum(yorumAdSoyad,yorumEmail,yorumIcerik) Values('" + txt_adSoyad.Text + "','" + txt_email.Text + "','" + txt_yorumicerik.Text + "')", baglan.baglan());
            cmdYorumekle.ExecuteNonQuery();

            // SqlCommand cmdYorumekle = new SqlCommand("insert into Yorum(yorumAdSoyad,yorumEmail,yorumIcerik,makaleID) Values('" + txt_adSoyad.Text + "','" + txt_email.Text + "','" + txt_yorumicerik.Text +"','"+makaleID+"')", baglan.baglan());
            // cmdYorumekle.ExecuteNonQuery();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}