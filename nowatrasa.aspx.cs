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
    public partial class nowatrasa : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("planowanietras.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Kod do dodawania trasy here
            SqlConnection conn = new SqlConnection(
            ConfigurationManager.ConnectionStrings["Matrobusy"].ConnectionString);

            //Zmienne here
            string dzien = TextBox1.Text;
            string godzina = TextBox2.Text;
            int idkierowcy = Convert.ToInt32(DropDownList1.SelectedValue);
            int idpojazdu = Convert.ToInt32(DropDownList2.SelectedValue);
            int poczatkowy = Convert.ToInt32(DropDownList3.SelectedValue);
            int koncowy = Convert.ToInt32(DropDownList4.SelectedValue);
            //Zmienne dla przystanków
            int zarydwwsiada = Convert.ToInt32(TextBox3.Text);
            int zarydwwysiada = Convert.ToInt32(TextBox4.Text);
            int zarys1wsiada = Convert.ToInt32(TextBox5.Text);
            int zarys1wysiada = Convert.ToInt32(TextBox6.Text);
            int zarys2wsiada = Convert.ToInt32(TextBox7.Text);
            int zarys2wysiada = Convert.ToInt32(TextBox8.Text);
            int zarycenwsiada = Convert.ToInt32(TextBox9.Text);
            int zarycenwysiada = Convert.ToInt32(TextBox10.Text);
            int zarys3wsiada = Convert.ToInt32(TextBox11.Text);
            int zarys3wysiada = Convert.ToInt32(TextBox12.Text);
            int zarykadlubiawsiada = Convert.ToInt32(TextBox13.Text);
            int zarykadlubiawysiada = Convert.ToInt32(TextBox14.Text);
            int zarykoszarywsiada = Convert.ToInt32(TextBox15.Text);
            int zarykoszarywysiada = Convert.ToInt32(TextBox16.Text);
            int marszowwsiada = Convert.ToInt32(TextBox17.Text);
            int marszowwysiada = Convert.ToInt32(TextBox18.Text);
            int zaganwojskowsiada = Convert.ToInt32(TextBox19.Text);
            int zaganwojskowysiada = Convert.ToInt32(TextBox20.Text);
            int zagans4wsiada = Convert.ToInt32(TextBox21.Text);
            int zagans4wysiada = Convert.ToInt32(TextBox22.Text);
            int zagancenwsiada = Convert.ToInt32(TextBox23.Text);
            int zagancenwysiada = Convert.ToInt32(TextBox24.Text);
            int zagans5wsiada = Convert.ToInt32(TextBox25.Text);
            int zagans5wysiada = Convert.ToInt32(TextBox26.Text);
            int zagandwwsiada = Convert.ToInt32(TextBox27.Text);
            int zagandwwysiada = Convert.ToInt32(TextBox28.Text);


            //Komenda SQL
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Trasy] ([Dzien], [Godzina], [Id_kierowcy], [Id_pojazdu], [P_poczatkowy], [P_koncowy], [Zary-Dw-Wsiada], " +
                "[Zary-Dw-Wysiada], [Zary-S1-Wsiada], [Zary-S1-Wysiada], [Zary-S2-Wsiada], [Zary-S2-Wysiada], [Zary-Centrum-Wsiada], [Zary-Centrum-Wysiada], [Zary-S3-Wsiada], " +
                "[Zary-S3-Wysiada], [Zary-Kadlubia-Wsiada], [Zary-Kadlubia-Wysiada], [Zary-Koszary-Wsiada], [Zary-Koszary-Wysiada], [Marszow-Glowny-Wsiada], [Marszow-Glowny-Wysiada], " +
                "[Zagan-Wojsko-Wsiada], [Zagan-Wojsko-Wysiada], [Zagan-S4-Wsiada], [Zagan-S4-Wysiada], [Zagan-Centrum-Wsiada], [Zagan-Centrum-Wysiada], [Zagan-S5-Wsiada], " +
                "[Zagan-S5-Wysiada], [Zagan-Dworzec-Wsiada], [Zagan-Dworzec-Wysiada]) Values ('" + dzien + "','" + godzina + "','" + idkierowcy + "','" + idpojazdu + "', " +
                "'" + poczatkowy + "', '" + koncowy + "', '" + zarydwwsiada + "', '" + zarydwwysiada + "', '" + zarys1wsiada + "', '" + zarys1wysiada + "', '" + zarys2wsiada + "'," +
                " '" + zarys2wysiada + "', '" + zarycenwsiada + "', '" + zarycenwysiada + "', '" + zarys3wsiada + "', '" + zarys3wysiada + "', '" + zarykadlubiawsiada + "'," +
                " '" + zarykadlubiawysiada + "', '" + zarykoszarywsiada + "', '" + zarykoszarywysiada + "', '" + marszowwsiada + "', '" + marszowwysiada + "', '" + zaganwojskowsiada + "'," +
                " '" + zaganwojskowysiada + "', '" + zagans4wsiada + "', '" + zagans4wysiada + "', '" + zagancenwsiada + "', '" + zagancenwysiada + "', '" + zagans5wsiada + "'," +
                " '" + zagans5wysiada + "', '" + zagandwwsiada + "', '" + zagandwwysiada + "')", conn);


            //KOD
            if (dzien == "" || godzina == "")
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
                Response.Redirect("adminlogin.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }
    }
}