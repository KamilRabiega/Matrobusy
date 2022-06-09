<%@ Page Title="Rejestracja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rejestracja.aspx.cs" Inherits="Projekt_autobus.rejestracja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT * FROM [Szkoly]"></asp:SqlDataSource>

    <div class="col-md-5">
        <table>
            <tbody>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Wprowadź login:&nbsp;"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" placeHolder="Login.."></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Wprowadź hasło:&nbsp;"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" type="password" placeHolder="Hasło.."></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Wprowadź adres e-mail:&nbsp;"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" placeHolder="E-mail.."></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Wprowadź swoje imię:&nbsp;"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" placeHolder="Imię.."></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Wprowadź swoje nazwisko:&nbsp;"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" placeHolder="Nazwisko.."></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td style="height: 29px">
                        <asp:Label ID="Label6" runat="server" Text="Klasa:&nbsp;"></asp:Label>

                    </td>
                    <td style="height: 29px">
                        <asp:TextBox ID="TextBox6" runat="server" placeHolder="Np. 1A, 3B, 6C"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Szkoła:&nbsp;"></asp:Label>

                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nazwa" DataValueField="Id_szkoly" Width="189px"></asp:DropDownList>
                        <!-- <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox> -->

                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Miasto:&nbsp;"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" placeHolder="Miasto.."></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Ulica i numer domu:&nbsp;"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" placeHolder="Ulica.."></asp:TextBox>

                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <div class="col-md-12 text-center">
            <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Zarejestruj się" OnClick="Button1_Click" /><asp:Button class="btn btn-outline-secondary" ID="Button2" runat="server" Text="Anuluj" OnClick="Button2_Click" /><br />
            <span>Posiadasz już konto?&nbsp;<a href="logowanie.aspx">Zaloguj się</a>!</span><br />
            <asp:Label ID="LabelError" runat="server" Visible="False" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>
