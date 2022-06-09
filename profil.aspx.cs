using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt_autobus
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* Opcje dla Administratora */
            if ((int)Session["rola"] == 1)
            {
                Response.Redirect("default.aspx");
            }

            /* Opcje dla Kierowcy */
            else if ((int)Session["rola"] == 2)
            {
                Response.Redirect("default.aspx");
            }
            /* Niezalogowany */
            else if ((int)Session["rola"] == 0)
            {
                Response.Redirect("default.aspx");
            }

            /* Nazwa profilu */
            string username = Session["username"].ToString();
            Label1.Text = username;

            string email = Session["email"].ToString();
            Label2.Text = email;
        }
    }
}