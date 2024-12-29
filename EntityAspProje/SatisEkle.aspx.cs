using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;

namespace EntityAspProje
{
    public partial class SatisEkle : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                var urn = (from x in db.Tbl_Urunler select new { x.UrunId, x.UrunAd }).ToList();
                DDLUrun.DataTextField = "UrunAd";
                DDLUrun.DataValueField = "UrunId";
                DDLUrun.DataSource = urn;
                DDLUrun.DataBind();

                var prsnl = (from x in db.Tbl_Personel select new { x.PersonelId, x.PersonelAdSoyad}).ToList();
                DDLPersonel.DataTextField = "PersonelAdSoyad";
                DDLPersonel.DataValueField = "PersonelId";
                DDLPersonel.DataSource = prsnl;
                DDLPersonel.DataBind();

                var mstr = (from x in db.Tbl_Musteri select new { x.MusteriId, Musteri = x.MusteriAd + " " + x.MusteriSoyad }).ToList();
                DDLMusteri.DataTextField = "Musteri";
                DDLMusteri.DataValueField = "MusteriId";
                DDLMusteri.DataSource = mstr;
                DDLMusteri.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_Satis t = new Tbl_Satis();
            t.Musteri = int.Parse(DDLMusteri.SelectedValue.ToString());
            t.Personel = byte.Parse(DDLPersonel.SelectedValue.ToString());
            t.Urun = short.Parse(DDLUrun.SelectedValue.ToString());
            t.Fiyat = decimal.Parse(TxtFiyat.Text);
            db.Tbl_Satis.Add(t);
            db.SaveChanges();
            Response.Redirect("Satislar.Aspx");

        }
    }
}