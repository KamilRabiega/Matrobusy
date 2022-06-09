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
    public partial class z_email : System.Web.UI.Page
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
            //Zmiana email
            SqlConnection conn = new SqlConnection(
            ConfigurationManager.ConnectionStrings["Matrobusy"].ConnectionString);
            string nowyemail = TextBox1.Text;
            string login = Session["username"].ToString();
            int userid = Convert.ToInt32(Session["id_user"]);

            SqlCommand cmd = new SqlCommand("SELECT Login, Id_user FROM Users WHERE Login='" + login + "' AND Id_user='" + userid + "'", conn);

            SqlCommand cmd2 = new SqlCommand("UPDATE Users SET Email='" + nowyemail + "' WHERE Id_user='" + userid + "' AND Login='" + login + "'", conn);


            if (nowyemail == "")  //Nie podano maila
            {
                LabelError.Text = "Musisz podać nowy email!";
                LabelError.Visible = true;
            }
            else
            {
                LabelError.Visible = false;
                conn.Open();
                using
                (SqlDataReader Areader = cmd.ExecuteReader())
                {
                    if (!Areader.HasRows)//Brak takiego rekordu, złe hasło 
                    {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error, skontaktuj się z administratorem.')", true);
                    }
                    else //Dane prawidłowe
                    {
                        conn.Close();
                        conn.Open();
                        cmd2.ExecuteNonQuery();
                        Session["zalogowano"] = 0;
                        Session["username"] = "";
                        Session["rola"] = 0;
                        Session["id_user"] = 0;
                        Response.Redirect("logowanie.aspx");
                    }
                        conn.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("uczen.aspx");
        }
    }
}