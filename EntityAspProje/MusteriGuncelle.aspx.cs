using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class MusteriGuncelle : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["MusteriId"]);
                TxtID.Text = id.ToString();
                var mstr = db.Tbl_Musteri.Find(id);
                TxtAd.Text = mstr.MusteriAd;
                TxtSoyad.Text = mstr.MusteriSoyad;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MusteriId"]);
            var mstr = db.Tbl_Musteri.Find(id);
            mstr.MusteriAd = TxtAd.Text;
            mstr.MusteriSoyad = TxtSoyad.Text;
            db.SaveChanges();
            Response.Redirect("Musteriler.aspx");
        }
    }
}