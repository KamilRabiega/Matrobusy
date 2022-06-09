<%@ Page Title="Trasy szczegółowe - jutro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kierojutro.aspx.cs" Inherits="Projekt_autobus.kierojutro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT        dbo.Trasy.Id_trasy AS Id, dbo.Trasy.Dzien, dbo.Trasy.Godzina, dbo.Users.Login, dbo.Pojazdy.Rejestracja, dbo.Przystanki_p.P_poczatkowe AS Skąd, dbo.Przystanki_k.P_koncowe AS Dokąd, CONCAT('+',dbo.Trasy.[Zary-Dw-Wsiada], ', -' ,dbo.Trasy.[Zary-Dw-Wysiada]) AS [Żary Dworzec], 
                         CONCAT('+',dbo.Trasy.[Zary-S1-Wsiada], ', -' ,dbo.Trasy.[Zary-S1-Wysiada]) AS [Żary Szkoła 1], CONCAT('+',dbo.Trasy.[Zary-S2-Wsiada], ', -' ,dbo.Trasy.[Zary-S2-Wysiada]) AS [Żary Szkoła 2], CONCAT('+',dbo.Trasy.[Zary-Centrum-Wsiada], ', -' ,dbo.Trasy.[Zary-Centrum-Wysiada]) AS [Żary Centrum], 
CONCAT('+',dbo.Trasy.[Zary-S3-Wsiada], ', -' ,dbo.Trasy.[Zary-S3-Wysiada]) AS [Żary Szkoła 3], CONCAT('+',dbo.Trasy.[Zary-Kadlubia-Wsiada], ', -' ,dbo.Trasy.[Zary-Kadlubia-Wysiada]) AS [Żary Kadłubia], CONCAT('+',dbo.Trasy.[Zary-Koszary-Wsiada], ', -' ,dbo.Trasy.[Zary-Koszary-Wysiada]) AS [Żary Koszary], 
CONCAT('+',dbo.Trasy.[Marszow-Glowny-Wsiada], ', -' ,dbo.Trasy.[Marszow-Glowny-Wysiada]) AS [Marszów Główny], CONCAT('+',dbo.Trasy.[Zagan-Wojsko-Wsiada], ', -' ,dbo.Trasy.[Zagan-Wojsko-Wysiada]) AS [Żagań Wojsko],  CONCAT('+',dbo.Trasy.[Zagan-S4-Wsiada], ', -' ,dbo.Trasy.[Zagan-S4-Wysiada]) AS [Żagań Szkoła 4],
CONCAT('+',dbo.Trasy.[Zagan-Centrum-Wsiada], ', -' ,dbo.Trasy.[Zagan-Centrum-Wysiada]) AS [Żagań Centrum], CONCAT('+',dbo.Trasy.[Zagan-S5-Wsiada], ', -' ,dbo.Trasy.[Zagan-S5-Wysiada]) AS [Żagań Szkoła 5], CONCAT('+',dbo.Trasy.[Zagan-Dworzec-Wsiada], ', -' ,dbo.Trasy.[Zagan-Dworzec-Wysiada]) AS [Żagań Dworzec]                    
FROM            dbo.Trasy INNER JOIN
                         dbo.Users ON dbo.Trasy.Id_kierowcy = dbo.Users.Id_user INNER JOIN
                         dbo.Pojazdy ON dbo.Trasy.Id_pojazdu = dbo.Pojazdy.Id_pojazdu INNER JOIN
                         dbo.Przystanki_k ON dbo.Trasy.P_koncowy = dbo.Przystanki_k.Id_przystanku INNER JOIN
                         dbo.Przystanki_p ON dbo.Trasy.P_poczatkowy = dbo.Przystanki_p.Id_przystanku
WHERE (([Login] = @Login) AND ([Dzien] = @Dzien))">
        <SelectParameters>
            <asp:SessionParameter Name="Login" SessionField="username" />
            <asp:SessionParameter Name="Dzien" SessionField="jutro" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="container">
        <div class="row text-center">
            <div class="col">
                <h2>Twoje jutrzejsze trasy szczegółowo</h2>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <asp:GridView style="font-size: 12px;" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Dzien" HeaderText="Dzien" SortExpression="Dzien" />
                        <asp:BoundField DataField="Godzina" HeaderText="Godzina" SortExpression="Godzina" />
                        <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                        <asp:BoundField DataField="Rejestracja" HeaderText="Rejestracja" SortExpression="Rejestracja" />
                        <asp:BoundField DataField="Skąd" HeaderText="Skąd" SortExpression="Skąd" />
                        <asp:BoundField DataField="Dokąd" HeaderText="Dokąd" SortExpression="Dokąd" />
                        <asp:BoundField DataField="Żary Dworzec" HeaderText="Żary Dworzec" ReadOnly="True" SortExpression="Żary Dworzec" />
                        <asp:BoundField DataField="Żary Szkoła 1" HeaderText="Żary Szkoła 1" ReadOnly="True" SortExpression="Żary Szkoła 1" />
                        <asp:BoundField DataField="Żary Szkoła 2" HeaderText="Żary Szkoła 2" ReadOnly="True" SortExpression="Żary Szkoła 2" />
                        <asp:BoundField DataField="Żary Centrum" HeaderText="Żary Centrum" ReadOnly="True" SortExpression="Żary Centrum" />
                        <asp:BoundField DataField="Żary Szkoła 3" HeaderText="Żary Szkoła 3" ReadOnly="True" SortExpression="Żary Szkoła 3" />
                        <asp:BoundField DataField="Żary Kadłubia" HeaderText="Żary Kadłubia" ReadOnly="True" SortExpression="Żary Kadłubia" />
                        <asp:BoundField DataField="Żary Koszary" HeaderText="Żary Koszary" ReadOnly="True" SortExpression="Żary Koszary" />
                        <asp:BoundField DataField="Marszów Główny" HeaderText="Marszów Główny" ReadOnly="True" SortExpression="Marszów Główny" />
                        <asp:BoundField DataField="Żagań Wojsko" HeaderText="Żagań Wojsko" ReadOnly="True" SortExpression="Żagań Wojsko" />
                        <asp:BoundField DataField="Żagań Szkoła 4" HeaderText="Żagań Szkoła 4" ReadOnly="True" SortExpression="Żagań Szkoła 4" />
                        <asp:BoundField DataField="Żagań Centrum" HeaderText="Żagań Centrum" ReadOnly="True" SortExpression="Żagań Centrum" />
                        <asp:BoundField DataField="Żagań Szkoła 5" HeaderText="Żagań Szkoła 5" ReadOnly="True" SortExpression="Żagań Szkoła 5" />
                        <asp:BoundField DataField="Żagań Dworzec" HeaderText="Żagań Dworzec" ReadOnly="True" SortExpression="Żagań Dworzec" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:Button style="margin-top: 10px;" class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Powrót" OnClick="Button1_Click" />
            </div>
        </div>
    </div>

</asp:Content>
