using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;

namespace EntityAspProje
{
    public partial class Satislar : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var satislar = (from x in db.Tbl_Satis
                           select new
                           {
                               x.SatisId,
                               x.Tbl_Urunler.UrunAd,
                               x.Tbl_Personel.PersonelAdSoyad,
                               Musteri = x.Tbl_Musteri.MusteriAd + " " + x.Tbl_Musteri.MusteriSoyad,
                               x.Fiyat
                           }).ToList();
            Repeater1.DataSource = satislar;
            Repeater1.DataBind();
        }
    }
}