using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class MusteriSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BonusAspDbEntities db = new BonusAspDbEntities();
            int x = Convert.ToInt32(Request.QueryString["MusteriId"]);
            var deger = db.Tbl_Musteri.Find(x);
            db.Tbl_Musteri.Remove(deger);
            db.SaveChanges();
            Response.Redirect("Musteriler.aspx");
        }
    }
}