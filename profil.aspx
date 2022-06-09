<%@ Page Title="Twój profil" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="Projekt_autobus.profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col text-center">
                <h2>Witaj <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></h2><br />
            </div>
        </div>
        <div class="row">
            <div class="col">
                <h4>Twój adres email to: <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Gray"></asp:Label></h4>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <h4>Edytuj profil</h4>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <a href="z_haslo.aspx">Zmiana hasła</a>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <a href="z_email.aspx">Zmiana email</a>
            </div>
        </div>
    </div>

</asp:Content>
