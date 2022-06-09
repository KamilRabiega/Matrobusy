<%@ Page Title="Autorzy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="oautorach.aspx.cs" Inherits="Projekt_autobus.oautorach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <h2 style="text-decoration: underline">Informacje o autorach</h2>
                <h5>Drużyna Matrobocik</h5>
                <asp:Label ID="Label1" runat="server" Text="Aleksandra Karnowska"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text="Marika Kalemba"></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text="Anna Kołpaczewska"></asp:Label><br />
                <asp:Label ID="Label4" runat="server" Text="Łukasz Lepko"></asp:Label><br />
                <asp:Label ID="Label5" runat="server" Text="Michał Pietrzak"></asp:Label>
                
                <h2 style="text-decoration: underline">Żródła z których korzystaliśmy</h2>
                <h5>Grafika</h5>

                <asp:HyperLink ID="HyperLink1" ForeColor="#666666" runat="server" Target="_blank" NavigateUrl="https://as1.ftcdn.net/v2/jpg/02/59/59/62/1000_F_259596222_DxWKzjlhZ7iNSL0oIiLp93PtmZMgnLSr.jpg" Font-Size="Larger">Planowanie przejazdów</asp:HyperLink><br />
                <asp:HyperLink ID="HyperLink2" ForeColor="#666666" runat="server" Target="_blank" NavigateUrl="https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iwBre_tYvIGM/v0/-1x-1.jpg" Font-Size="Larger">Zakup biletu</asp:HyperLink><br />
                <asp:HyperLink ID="HyperLink3" ForeColor="#666666" runat="server" Target="_blank" NavigateUrl="https://www.freeiconspng.com/thumbs/bus-icon/bus-icon-19.png" Font-Size="Larger">Ikonka loga</asp:HyperLink><br /><br />

                <h5>Technologie</h5>
                <asp:HyperLink ID="HyperLink4" ForeColor="#666666" runat="server" Target="_blank" NavigateUrl="https://getbootstrap.com/" Font-Size="Larger">Oprawa graficzna - Bootstrap</asp:HyperLink><br />
                <asp:HyperLink ID="HyperLink5" ForeColor="#666666" runat="server" Target="_blank" NavigateUrl="https://dotnet.microsoft.com/en-us/apps/aspnet" Font-Size="Larger">Aplikacja - Platforma ASP.NET</asp:HyperLink><br />
                <asp:HyperLink ID="HyperLink6" ForeColor="#666666" runat="server" Target="_blank" NavigateUrl="https://www.microsoft.com/pl-pl/sql-server/sql-server-2019" Font-Size="Larger">Baza danych - MS SQL</asp:HyperLink><br />
                <asp:HyperLink ID="HyperLink7" ForeColor="#666666" runat="server" Target="_blank" NavigateUrl="https://webio.pl/" Font-Size="Larger">Hosting aplikacji - Webio.pl</asp:HyperLink><br />

            </div>
        </div>
        
    </div>
</asp:Content>
