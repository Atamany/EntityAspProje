using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class PersonelEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BonusAspDbEntities db = new BonusAspDbEntities();
            Tbl_Personel t = new Tbl_Personel();
            t.PersonelAdSoyad = TextBox1.Text;
            t.Durum = true;
            db.Tbl_Personel.Add(t);
            db.SaveChanges();
            Response.Redirect("Personeller.aspx");
        }
    }
}