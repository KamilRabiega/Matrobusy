using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt_autobus
{
    public partial class Wykres4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* Dostęp sesyjny */
            /* Opcje dla Kierowcy */
            if ((int)Session["rola"] == 2)
            {
                Response.Redirect("default.aspx");
            }
            /* Opcje dla Ucznia */
            else if ((int)Session["rola"] == 3)
            {
                Response.Redirect("default.aspx");
            }
            /* Niezalogowany */
            else if ((int)Session["rola"] == 0)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("wykresyadmin.aspx");
        }
    }
}