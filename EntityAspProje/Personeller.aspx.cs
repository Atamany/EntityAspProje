using EntityAspProje.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityAspProje
{
    public partial class Personeller : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = db.Tbl_Personel.Where(x => x.Durum == true).ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }
    }
}