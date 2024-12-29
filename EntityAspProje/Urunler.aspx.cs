using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;
using System.Configuration.Provider;
using System.Xml.Linq;


namespace EntityAspProje
{
    public partial class Urunler : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var urunler = (from Urun in db.Tbl_Urunler.Where(x=>x.Durum==true)
                               join Kategori in db.Tbl_Kategori on Urun.UrunKategori equals Kategori.KategoriId
                               select new
                               {
                                   UrunId = Urun.UrunId,
                                   UrunAd = Urun.UrunAd,
                                   UrunMarka = Urun.UrunMarka,
                                   KategoriAd = Kategori.KategoriAd,
                                   UrunFiyat = Urun.UrunFiyat,
                                   UrunStok = Urun.UrunStok
                               }).ToList();

                // Repeater'a veri bağlama
                Repeater1.DataSource = urunler;
                Repeater1.DataBind();
            }
        }
    }
}