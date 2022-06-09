<%@ Page Title="Zmiana e-mail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="z_email.aspx.cs" Inherits="Projekt_autobus.z_email" %>
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
                                <asp:Label ID="Label1" runat="server" Text="Nowy adres e-mail: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" placeHolder="Nowy e-mail.." type="email"></asp:TextBox>

                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Zmień adres" style="margin-right: 10px;" OnClick="Button1_Click" />
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
