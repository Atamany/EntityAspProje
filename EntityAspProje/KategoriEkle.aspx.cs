using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;

namespace EntityAspProje
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BonusAspDbEntities db = new BonusAspDbEntities();
            Tbl_Kategori t = new Tbl_Kategori();
            t.KategoriAd = TextBox1.Text;
            t.Durum = true;
            db.Tbl_Kategori.Add(t);
            db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}