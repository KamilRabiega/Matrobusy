using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Projekt_autobus
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["zalogowano"] == 1)
            {
                string username = Session["username"].ToString();
                L_niezalogowany.Visible = false;
                Panel1.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                L_zalogowany2.Text = username;
            }
            else if ((int)Session["zalogowano"] == 0)
            {
                L_niezalogowany.Visible = true;
                Panel1.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = true;
            }




            if((int)Session["rola"] == 0)
            {
                Panel2.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }

            /* Opcje dla Administratora */
            if ((int)Session["rola"] == 1)
            {
                Panel2.Visible = true;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }

            /* Opcje dla Kierowcy */
            else if ((int)Session["rola"] == 2)
            {
                Panel2.Visible = false;
                Panel5.Visible = true;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }
            /* Opcje dla Ucznia */
            else if ((int)Session["rola"] == 3)
            {
                Panel2.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = true;
                Panel7.Visible = true;
            }
        }
    }
}