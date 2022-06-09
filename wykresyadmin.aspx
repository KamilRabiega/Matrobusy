<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wykresyadmin.aspx.cs" Inherits="Projekt_autobus.wykresyadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row text-center">
            <div class="col">
                <h3>Wyświetlanie danych na wykresach</h3>
            </div>
        </div>
        <div class="row">
            <div class="col">

                <ol>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Wykres3.aspx" ForeColor="#666666">Złożone zamówienia w ciągu ostatniego tygodnia</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Wykres1.aspx" ForeColor="#666666">Złożone zamówienia w ciągu ostatnich dwóch tygodni</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Wykres2.aspx" ForeColor="#666666">Złożone zamówienia w ciągu ostatniego miesiąca</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Wykres4.aspx" ForeColor="#666666">Trasy, które odbyły się w ostatnim tygodniu</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Wykres5.aspx" ForeColor="#666666">Trasy, które odbyły się w ciągu ostatnich dwóch tygodni</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Wykres6.aspx" ForeColor="#666666">Trasy, które odbyły się w ciągu ostatniego miesiąca</asp:HyperLink></li>
                </ol>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <asp:Button Style="margin-top: 10px;" class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Powrót" OnClick="Button1_Click" />
            </div>
        </div>
    </div>

</asp:Content>
