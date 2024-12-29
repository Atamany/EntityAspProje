using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityAspProje.Entity;

namespace EntityAspProje
{
    public partial class Musteriler : System.Web.UI.Page
    {
        BonusAspDbEntities db = new BonusAspDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = db.Tbl_Musteri.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }
    }
}