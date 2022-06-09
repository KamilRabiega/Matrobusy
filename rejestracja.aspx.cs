using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;


namespace Projekt_autobus
{
    public partial class rejestracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            

            //Zarejestruj się
            SqlConnection conn = new SqlConnection(
            ConfigurationManager.ConnectionStrings["Matrobusy"].ConnectionString);
            string login = TextBox1.Text;
            //string password = TextBox2.Text;
            string email = TextBox3.Text;
            string imie = TextBox4.Text;
            string nazwisko = TextBox5.Text;
            string klasa = TextBox6.Text;
            string miasto = TextBox8.Text;
            string ulica = TextBox9.Text;
            string szkola = DropDownList1.SelectedValue;
            string szyfrowanepass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "MD5");

            SqlCommand cmd = new SqlCommand("Insert Users (Imie, Nazwisko, Login, Password, Email, Klasa, Szkola, Miasto, Ulica, Rola) Values ('"
            + imie + "','" + nazwisko + "','" + login + "','" + szyfrowanepass + "', '" + email + "', '" + klasa + "', '" + szkola + "', '" + miasto + "', '" + ulica + "', 3)", conn);

            if (login == "" || szyfrowanepass == "" || imie == "" || nazwisko == "" || email == "")
            {
                LabelError.Text = "Musisz wypełnić wsystkie pola!";
                LabelError.Visible = true;
            }
            else
            {
                LabelError.Visible = false;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("default.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Anuluj
            Response.Redirect("default.aspx");
        }
    }
}