using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;

namespace EntityAspProje
{
    public partial class Login : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
            }
        }

        protected void Giris_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.Tbl_Admin where x.Kullanici == TxtKullanici.Text && x.Sifre == TxtSifre.Text select x;
            if (sorgu.Any())
            {
                Response.Redirect("Kategoriler.aspx");
            }
            else
            {
                Response.Write("Hatalı Bilgi Girişi!");
            }
        }
    }
}