<%@ Page Title="Strona administratora" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Projekt_autobus.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
                <div class="col text-center">
                    <h1>Panel administratora</h1>
                    <asp:Label ID="Label2" runat="server" Text="Zalogowano jako: "></asp:Label><asp:Label ID="Label1" runat="server" Text="Zalogowany" ForeColor="Red"></asp:Label><br />
                    <br />
                </div>
            </div>
        <div class="row text-center">
            <div class="col-md-4">
                <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Planuj przejazdy" OnClick="Button1_Click" style="margin-top: 10px;" />
            </div>
            <div class="col-md-4">
                <asp:Button class="btn btn-outline-secondary" style="margin-top: 10px;" ID="Button3" runat="server" Text="Planuj trasy" OnClick="Button3_Click" />
            </div>
            <div class="col-md-4">
                <asp:Button class="btn btn-outline-secondary" ID="Button2" runat="server" Text="Wykresy" OnClick="Button2_Click" style="margin-top: 10px;" />
            </div>
        </div>
    </div>

</asp:Content>
