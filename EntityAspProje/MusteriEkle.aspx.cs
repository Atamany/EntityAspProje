using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class MusteriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BonusAspDbEntities db = new BonusAspDbEntities();
            Tbl_Musteri t = new Tbl_Musteri();
            t.MusteriAd = TextBox1.Text;
            t.MusteriSoyad = TextBox2.Text;
            t.Durum = true;
            db.Tbl_Musteri.Add(t);
            db.SaveChanges();
            Response.Redirect("Musteriler.aspx");
        }
    }
}