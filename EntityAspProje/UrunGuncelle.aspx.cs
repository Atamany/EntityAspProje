using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class UrunGuncelle : System.Web.UI.Page
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

                int id = Convert.ToInt32(Request.QueryString["UrunId"]);
                TxtUrunId.Text = id.ToString();
                var Urn = db.Tbl_Urunler.Find(id);
                TxtUrunAd.Text = Urn.UrunAd.ToString();
                TxtUrunFiyat.Text = Urn.UrunFiyat.ToString();
                TxtUrunMarka.Text = Urn.UrunMarka.ToString();
                TxtUrunStok.Text = Urn.UrunStok.ToString();
                DDLKategori.SelectedValue = Urn.UrunKategori.ToString();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["UrunId"]);
            var Urn = db.Tbl_Urunler.Find(id);

            Urn.UrunAd = TxtUrunAd.Text;
            Urn.UrunMarka = TxtUrunMarka.Text;
            Urn.UrunStok = short.Parse(TxtUrunStok.Text);
            Urn.UrunFiyat = decimal.Parse(TxtUrunFiyat.Text);
            Urn.UrunKategori = byte.Parse(DDLKategori.SelectedValue.ToString());
            Urn.Durum = true;
            db.SaveChanges();
            Response.Redirect("Urunler.Aspx");
        }
    }
}