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
    public partial class planujprzejazd : System.Web.UI.Page
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Planowanie przejazdu
            SqlConnection conn = new SqlConnection(
            ConfigurationManager.ConnectionStrings["Matrobusy"].ConnectionString);
            string iduser = Session["id_user"].ToString();
            string dzien = TextBox1.Text;
            string godzina = TextBox2.Text;
            string poczatkowy = DropDownList1.SelectedValue;
            string koncowy = DropDownList2.SelectedValue;

            SqlCommand cmd = new SqlCommand("Insert Przejazdy (Id_user, P_poczatkowy, P_koncowy, Dzien, Godzina, CzyZatwierdzony, CzyOplacony) Values ('"
            + iduser + "','" + poczatkowy + "','" + koncowy + "','" + dzien + "', '" + godzina + "', 0, 0)", conn);

            if (DropDownList1.SelectedValue == DropDownList2.SelectedValue)  //Zaznaczono takie same przystanki
            {
                LabelError.Text = "Nie możesz wybrać tego samego przystanku jako początkowy oraz końcowy!";
                LabelError.Visible = true;
            }
            else
            {
                //Tutaj cały kolejny kod jeśli przystanki są różne
                LabelError.Visible = false;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("przejazdy.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("uczen.aspx");
        }
    }
}