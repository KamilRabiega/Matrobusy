<%@ Page Title="Aktywne bilety" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="aktywnebilety.aspx.cs" Inherits="Projekt_autobus.aktywnebilety" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    <div class="container">
        <div class="row">
            <div class="col text-center">
                <h1>Aktywne bilety</h1>
                
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>

            </div>
        </div>
    </div>
</asp:Content>
