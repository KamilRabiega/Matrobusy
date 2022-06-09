<%@ Page Title="Planuj trasy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="planowanietras.aspx.cs" Inherits="Projekt_autobus.planowanietras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
                <div class="col text-center">
                    <h3>Panel administratora</h3>
                </div>
            </div>
        <div class="row text-center">
            <div class="col-md-6">
                <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Zaplanuj nową trasę" OnClick="Button1_Click" style="margin-top: 10px;" Width="210px" />
            </div>
            <div class="col-md-6">
                <asp:Button class="btn btn-outline-secondary" style="margin-top: 10px;" ID="Button3" runat="server" Text="Wszystkie trasy" OnClick="Button3_Click" Width="210px" />
            </div>
        </div>
    </div>

</asp:Content>
