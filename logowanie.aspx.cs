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
    public partial class logowanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Logowanie
            SqlConnection conn = new SqlConnection(
            ConfigurationManager.ConnectionStrings["Matrobusy"].ConnectionString);
            string login = TextBox1.Text;
            //string password = TextBox2.Text;
            string szyfrowanepass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "MD5");
            string email = "";
            string login_db = "";
            string pass_db = "";
            int rola_db = 0;
            int userid_db = 0;

            SqlCommand cmd = new SqlCommand("SELECT Login, Password, Rola, Id_user, Email FROM Users WHERE Login='" + login + "' AND Password='" + szyfrowanepass + "'", conn);
           
            if (login == "" || szyfrowanepass == "")  //Nie podano loginu lub hasła
            {
                LabelError.Text = "Musisz wprowadzić login oraz hasło!";
                LabelError.Visible = true;
            }
            else
            {
                LabelError.Visible = false;
                conn.Open();
                using
                (SqlDataReader Areader = cmd.ExecuteReader())
                {
                    if (!Areader.HasRows)//nie ma rekordów. Nie ma takiego konta
                    {
                        Session["zalogowano"] = 0;
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Wprowadzono błędny login lub hasło.')", true);
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        Session["username"] = login;
                    }
                    else //zalogowanie OK
                    {
                        Session["zalogowano"] = 1;
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        Session["username"] = login;

                        /* Sprawdzanie czy Admin/Kierowca/Uczen ________________________________________*/
                        if (Areader.FieldCount == 5)
                        {
                            while (Areader.Read())
                            {
                                login_db = Areader.GetString(0);
                                pass_db = Areader.GetString(1);
                                rola_db = Areader.GetInt32(2);
                                userid_db = Areader.GetInt32(3);
                                email = Areader.GetString(4);
                            }
                        }
                        Session["rola"] = Convert.ToInt32(rola_db);
                        Session["id_user"] = Convert.ToInt32(userid_db);
                        Session["email"] = email;


                        /* Koniec sprawdzania czy Admin/Kierowca/Uczen __________________________________*/

                        string username = Session["username"].ToString();
                    }
                    conn.Close();

                    /* Opcje dla Administratora */
                    if ((int)Session["rola"] == 1)
                    {
                        Response.Redirect("adminlogin.aspx");
                    }

                    /* Opcje dla Kierowcy */
                    else if ((int)Session["rola"] == 2)
                    {
                        Response.Redirect("kierowca.aspx");
                    }
                    /* Opcje dla Ucznia */
                    else if ((int)Session["rola"] == 3)
                    {
                        Response.Redirect("uczen.aspx");
                    }
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}