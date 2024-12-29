using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class KategoriSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BonusAspDbEntities db = new BonusAspDbEntities();
            int x= Convert.ToInt32(Request.QueryString["KategoriId"]);
            var deger = db.Tbl_Kategori.Find(x);
            deger.Durum = false;
            db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}