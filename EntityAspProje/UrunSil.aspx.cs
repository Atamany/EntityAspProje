using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;

namespace EntityAspProje
{
    public partial class UrunSil : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["UrunId"]);
            var urun = db.Tbl_Urunler.Find(id);
            urun.Durum = false;
            db.SaveChanges();
            Response.Redirect("Urunler.aspx");
        }
    }
}