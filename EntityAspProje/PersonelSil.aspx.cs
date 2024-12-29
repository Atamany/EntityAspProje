using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class PersonelSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BonusAspDbEntities db = new BonusAspDbEntities();
            int x = Convert.ToInt32(Request.QueryString["PersonelId"]);
            var deger = db.Tbl_Personel.Find(x);
            db.Tbl_Personel.Remove(deger);
            db.SaveChanges();
            Response.Redirect("Personeller.aspx");
        }
    }
}