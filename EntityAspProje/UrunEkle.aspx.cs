using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;

namespace EntityAspProje
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var ktg = (from x in db.Tbl_Kategori select new { x.KategoriId, x.KategoriAd }).ToList();
                DDLKategori.DataTextField = "KategoriAd";
                DDLKategori.DataValueField = "KategoriId";
                DDLKategori.DataSource = ktg;
                DDLKategori.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_Urunler t = new Tbl_Urunler();
            t.UrunAd = TxtUrunAd.Text;
            t.UrunMarka = TxtUrunMarka.Text;
            t.UrunStok = short.Parse(TxtUrunStok.Text);
            t.UrunFiyat = decimal.Parse(TxtUrunFiyat.Text);
            t.UrunKategori = byte.Parse(DDLKategori.SelectedValue.ToString());
            t.Durum = true;
            db.Tbl_Urunler.Add(t);
            db.SaveChanges();
            Response.Redirect("Urunler.Aspx");
        }
    }
}