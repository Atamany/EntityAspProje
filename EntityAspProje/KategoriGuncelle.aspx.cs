using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;

namespace EntityAspProje
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["KategoriId"]);
                TxtID.Text = id.ToString();
                var ktgr = db.Tbl_Kategori.Find(id);
                TxtAd.Text = ktgr.KategoriAd;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriId"]);
            var ktgr = db.Tbl_Kategori.Find(id);
            ktgr.KategoriAd = TxtAd.Text;
            db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}