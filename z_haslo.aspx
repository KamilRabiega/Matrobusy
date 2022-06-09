<%@ Page Title="Zmiana hasła" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="z_haslo.aspx.cs" Inherits="Projekt_autobus.z_haslo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row text-center">
            <div class="col">
                <h3>Zmiana hasła</h3>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <table style="margin-left: auto; margin-right: auto;">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Wprowadź obecne hasło: "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" placeHolder="Obecne hasło.." type="password"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Wprowadź nowe hasło: "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" type="password" placeHolder="Nowe hasło.."></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Wprowadź nowe hasło: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" placeHolder="Nowe hasło.." type="password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Zmień hasło" style="margin-right: 10px;" OnClick="Button1_Click" />
                <asp:Button class="btn btn-outline-secondary" ID="Button2" runat="server" Text="Anuluj" OnClick="Button2_Click" /><br />
                <asp:Label ID="LabelError" runat="server" Text="Error" ForeColor="Red" Visible="false"></asp:Label>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
            </div>
        </div>
    </div>

</asp:Content>
