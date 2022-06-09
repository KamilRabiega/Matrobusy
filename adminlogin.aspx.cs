using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt_autobus
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

            string adminname = Session["username"].ToString();
            Label1.Text = adminname;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("administrator.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("wykresyadmin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("planowanietras.aspx");
        }
    }
}