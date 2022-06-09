<%@ Page Title="Trasy, które odbyły sie w ostatnim tygodniu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Wykres4.aspx.cs" Inherits="Projekt_autobus.Wykres4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- SQL dla bazy -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Dzien], COUNT(Dzien) AS [Ilość tras] FROM [Trasy] WHERE [Dzien] BETWEEN @Tydzientemu AND @Dzisiaj GROUP BY Dzien">
        <SelectParameters>
            <asp:SessionParameter Name="Tydzientemu" SessionField="tydzienwstecz" />
            <asp:SessionParameter Name="Dzisiaj" SessionField="aktualny_czas" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="container">
        <div class="row text-center">
            <div class="col">
                <h3>Wykres dla tras, które odbyły się w ostatnim tygodniu</h3>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">

                <asp:Chart ID="Chart1" runat="server" BackColor="Gainsboro" DataSourceID="SqlDataSource1" Palette="Grayscale">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="Dzien" YValueMembers="Ilość tras"></asp:Series>
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
