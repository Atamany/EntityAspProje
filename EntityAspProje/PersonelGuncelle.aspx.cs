using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class PersonelGuncelle : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["PersonelId"]);
                TxtID.Text = id.ToString();
                var prsnl = db.Tbl_Personel.Find(id);
                TxtAdSoyad.Text = prsnl.PersonelAdSoyad;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["PersonelId"]);
            var prsnl = db.Tbl_Personel.Find(id);
            prsnl.PersonelAdSoyad = TxtAdSoyad.Text;
            db.SaveChanges();
            Response.Redirect("Personeller.aspx");
        }
    }
}