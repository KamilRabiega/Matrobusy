<%@ Page Title="Wykres dla przejazdów z ostatnich dwóch tygodni" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Wykres1.aspx.cs" Inherits="Projekt_autobus.Wykres1" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <!-- SQL dla  -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Dzien], COUNT(Dzien) AS [Ilość przejazdów] FROM [Przejazdy] WHERE [Dzien] BETWEEN @Dwatygtemu AND @Dzisiaj GROUP BY Dzien">
        <SelectParameters>
            <asp:SessionParameter Name="Dwatygtemu" SessionField="dwatygwstecz" />
            <asp:SessionParameter Name="Dzisiaj" SessionField="aktualny_czas" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="container">
        <div class="row text-center">
            <div class="col">
                <h3>Ilość zamówień złożonych w ciągu ostatnich dwóch tygodni</h3>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="700px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="Dzien" YValueMembers="Ilość przejazdów"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>

                <br />
                <asp:Button style="margin-top: 10px;" class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Powrót" OnClick="Button1_Click" />
            </div>
        </div>
    </div>

</asp:Content>
