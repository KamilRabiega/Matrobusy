using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Projekt_autobus
{
    public partial class zakupbiletu : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Zarejestruj się
            SqlConnection conn = new SqlConnection(
            ConfigurationManager.ConnectionStrings["Matrobusy"].ConnectionString);

            int selectedrow = Convert.ToInt32(GridView1.SelectedValue);

            SqlCommand cmd = new SqlCommand("UPDATE [Przejazdy] SET [CzyOplacony] = '"+true+"' WHERE [Id_przejazdu] = '"+selectedrow+"'", conn);

            if (GridView1.SelectedValue == null)
            {
                LabelError.Text = "Musisz wybrać przejazd aby dokonac zakupu!";
                LabelError.Visible = true;
            }
            else
            {
                LabelError.Visible = false;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("zakupbiletu.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("uczen.aspx");
        }
    }
}