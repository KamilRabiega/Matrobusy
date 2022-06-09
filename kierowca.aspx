<%@ Page Title="Panel kierowcy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kierowca.aspx.cs" Inherits="Projekt_autobus.kierowca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- SQL - dzisiaj -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT        dbo.Trasy.Id_trasy AS Id, dbo.Trasy.Dzien, dbo.Trasy.Godzina, dbo.Users.Login, dbo.Pojazdy.Rejestracja, dbo.Przystanki_p.P_poczatkowe AS Skąd, dbo.Przystanki_k.P_koncowe AS Dokąd, (dbo.Trasy.[Zary-Dw-Wsiada] + dbo.Trasy.[Zary-S1-Wsiada] + dbo.Trasy.[Zary-S2-Wsiada] + dbo.Trasy.[Zary-Centrum-Wsiada] + dbo.Trasy.[Zary-S3-Wsiada] + dbo.Trasy.[Zary-Kadlubia-Wsiada] + dbo.Trasy.[Zary-Koszary-Wsiada] + dbo.Trasy.[Marszow-Glowny-Wsiada] + dbo.Trasy.[Zagan-Wojsko-Wsiada] + dbo.Trasy.[Zagan-S4-Wsiada] + dbo.Trasy.[Zagan-Centrum-Wsiada] + dbo.Trasy.[Zagan-S5-Wsiada] + dbo.Trasy.[Zagan-Dworzec-Wsiada]) AS Pasażerów                  
FROM            dbo.Trasy INNER JOIN
                         dbo.Users ON dbo.Trasy.Id_kierowcy = dbo.Users.Id_user INNER JOIN
                         dbo.Pojazdy ON dbo.Trasy.Id_pojazdu = dbo.Pojazdy.Id_pojazdu INNER JOIN
                         dbo.Przystanki_k ON dbo.Trasy.P_koncowy = dbo.Przystanki_k.Id_przystanku INNER JOIN
                         dbo.Przystanki_p ON dbo.Trasy.P_poczatkowy = dbo.Przystanki_p.Id_przystanku
WHERE (([Login] = @Login) AND ([Dzien] = @Dzien))">
        <SelectParameters>
            <asp:SessionParameter Name="Login" SessionField="username" />
            <asp:SessionParameter Name="Dzien" SessionField="aktualny_czas" />
        </SelectParameters>
    </asp:SqlDataSource>

    <!-- SQL - dzisiaj -->
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT        dbo.Trasy.Id_trasy AS Id, dbo.Trasy.Dzien, dbo.Trasy.Godzina, dbo.Users.Login, dbo.Pojazdy.Rejestracja, dbo.Przystanki_p.P_poczatkowe AS Skąd, dbo.Przystanki_k.P_koncowe AS Dokąd, (dbo.Trasy.[Zary-Dw-Wsiada] + dbo.Trasy.[Zary-S1-Wsiada] + dbo.Trasy.[Zary-S2-Wsiada] + dbo.Trasy.[Zary-Centrum-Wsiada] + dbo.Trasy.[Zary-S3-Wsiada] + dbo.Trasy.[Zary-Kadlubia-Wsiada] + dbo.Trasy.[Zary-Koszary-Wsiada] + dbo.Trasy.[Marszow-Glowny-Wsiada] + dbo.Trasy.[Zagan-Wojsko-Wsiada] + dbo.Trasy.[Zagan-S4-Wsiada] + dbo.Trasy.[Zagan-Centrum-Wsiada] + dbo.Trasy.[Zagan-S5-Wsiada] + dbo.Trasy.[Zagan-Dworzec-Wsiada]) AS Pasażerów                 
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

    <!-- SQL - dzisiaj -->
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT        dbo.Trasy.Id_trasy AS Id, dbo.Trasy.Dzien, dbo.Trasy.Godzina, dbo.Users.Login, dbo.Pojazdy.Rejestracja, dbo.Przystanki_p.P_poczatkowe AS Skąd, dbo.Przystanki_k.P_koncowe AS Dokąd, (dbo.Trasy.[Zary-Dw-Wsiada] + dbo.Trasy.[Zary-S1-Wsiada] + dbo.Trasy.[Zary-S2-Wsiada] + dbo.Trasy.[Zary-Centrum-Wsiada] + dbo.Trasy.[Zary-S3-Wsiada] + dbo.Trasy.[Zary-Kadlubia-Wsiada] + dbo.Trasy.[Zary-Koszary-Wsiada] + dbo.Trasy.[Marszow-Glowny-Wsiada] + dbo.Trasy.[Zagan-Wojsko-Wsiada] + dbo.Trasy.[Zagan-S4-Wsiada] + dbo.Trasy.[Zagan-Centrum-Wsiada] + dbo.Trasy.[Zagan-S5-Wsiada] + dbo.Trasy.[Zagan-Dworzec-Wsiada]) AS Pasażerów                 
FROM            dbo.Trasy INNER JOIN
                         dbo.Users ON dbo.Trasy.Id_kierowcy = dbo.Users.Id_user INNER JOIN
                         dbo.Pojazdy ON dbo.Trasy.Id_pojazdu = dbo.Pojazdy.Id_pojazdu INNER JOIN
                         dbo.Przystanki_k ON dbo.Trasy.P_koncowy = dbo.Przystanki_k.Id_przystanku INNER JOIN
                         dbo.Przystanki_p ON dbo.Trasy.P_poczatkowy = dbo.Przystanki_p.Id_przystanku
WHERE ([Login] = @Login)">
        <SelectParameters>
            <asp:SessionParameter Name="Login" SessionField="username" />
        </SelectParameters>
    </asp:SqlDataSource>


    <div class="container">
        <asp:Panel ID="Panel1" runat="server">
        <div class="row text-center">
            <div class="col">
                <h1>Panel kierowcy</h1>
                <asp:Label ID="Label1" runat="server" Text="Zalogowano jako: "></asp:Label><asp:Label ID="Label2" runat="server" Text="Zalogowany" style="text-decoration: underline;" ForeColor="Green"></asp:Label><br /><br />
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <h4 style="text-decoration: underline; font-style: italic">Wersja skrócona przeglądu tras</h4>
                <asp:Button class="btn btn-outline-secondary" style="margin-left: 10px; margin-top: 10px;" Width="250px" ID="Button1" runat="server" Text="Trasy zaplanowane na dzisiaj" OnClick="Button1_Click" />
                <asp:Button class="btn btn-outline-secondary" style="margin-left: 10px; margin-top: 10px;" ID="Button2" Width="250px" runat="server" Text="Trasy zaplanowane na jutro" OnClick="Button2_Click" />
                <asp:Button class="btn btn-outline-secondary" style="margin-left: 10px; margin-top: 10px;" Width="250px" ID="Button3" runat="server" Text="Wszystkie trasy" OnClick="Button3_Click" />
            </div>
        </div>
        <div class="row text-center" style="padding-top: 20px;">
            <div class="col">
                <h4 style="text-decoration: underline; font-style: italic">Wersja szczegółowa przeglądu tras</h4>
                <asp:Button class="btn btn-outline-secondary" style="margin-left: 10px; margin-top: 10px;" Width="250px" ID="Button4" runat="server" Text="Trasy zaplanowane na dzisiaj" OnClick="Button4_Click" />
                <asp:Button class="btn btn-outline-secondary" style="margin-left: 10px; margin-top: 10px;" Width="250px" ID="Button5" runat="server" Text="Trasy zaplanowane na jutro" OnClick="Button5_Click" />
                <asp:Button class="btn btn-outline-secondary" style="margin-left: 10px; margin-top: 10px;" Width="250px" ID="Button6" runat="server" Text="Wszystkie trasy" OnClick="Button6_Click" />
            </div>
            
        </div>
        </asp:Panel>

        <!-- Panel dla - dzisiaj -->
        <asp:Panel ID="Panel2" runat="server" Visible="false">
            <div class="row text-center">
                <div class="col">
                    <h3>Twoje dzisiejsze trasy</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col">
                    <asp:GridView style="margin-left: auto; margin-right: auto;" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Dzien" HeaderText="Dzien" SortExpression="Dzien" />
                            <asp:BoundField DataField="Godzina" HeaderText="Godzina" SortExpression="Godzina" />
                            <asp:BoundField DataField="Skąd" HeaderText="Skąd" SortExpression="Skąd" />
                            <asp:BoundField DataField="Dokąd" HeaderText="Dokąd" SortExpression="Dokąd" />
                            <asp:BoundField DataField="Pasażerów" HeaderText="Pasażerów" ReadOnly="True" SortExpression="Pasażerów" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView><br />
                    <asp:Button style="margin-top: 10px;" class="btn btn-outline-secondary" ID="Button7" runat="server" Text="Powrót" OnClick="Button7_Click" />
                </div>
            </div>
            
        </asp:Panel>

        <!-- Panel dla - jutro -->
        <asp:Panel ID="Panel3" runat="server" Visible="false">
            <div class="row text-center">
                <div class="col">
                    <h3>Twoje jutrzejsze trasy</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col">
                    <asp:GridView style="margin-left: auto; margin-right: auto;" ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Dzien" HeaderText="Dzien" SortExpression="Dzien" />
                            <asp:BoundField DataField="Godzina" HeaderText="Godzina" SortExpression="Godzina" />
                            <asp:BoundField DataField="Skąd" HeaderText="Skąd" SortExpression="Skąd" />
                            <asp:BoundField DataField="Dokąd" HeaderText="Dokąd" SortExpression="Dokąd" />
                            <asp:BoundField DataField="Pasażerów" HeaderText="Pasażerów" ReadOnly="True" SortExpression="Pasażerów" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView><br />
                    <asp:Button style="margin-top: 10px;" class="btn btn-outline-secondary" ID="Button8" runat="server" Text="Powrót" OnClick="Button8_Click" />
                </div>
            </div>
            
        </asp:Panel>

        <!-- Panel dla - całość -->
        <asp:Panel ID="Panel4" runat="server" Visible="false">
            <div class="row text-center">
                <div class="col">
                    <h3>Wszystkie Twoje trasy</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col">
                    <asp:GridView style="margin-left: auto; margin-right: auto;" ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Dzien" HeaderText="Dzien" SortExpression="Dzien" />
                            <asp:BoundField DataField="Godzina" HeaderText="Godzina" SortExpression="Godzina" />
                            <asp:BoundField DataField="Skąd" HeaderText="Skąd" SortExpression="Skąd" />
                            <asp:BoundField DataField="Dokąd" HeaderText="Dokąd" SortExpression="Dokąd" />
                            <asp:BoundField DataField="Pasażerów" HeaderText="Pasażerów" ReadOnly="True" SortExpression="Pasażerów" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView><br />
                    <asp:Button style="margin-top: 10px;" class="btn btn-outline-secondary" ID="Button9" runat="server" Text="Powrót" OnClick="Button9_Click" />
                </div>
            </div>
            
        </asp:Panel>
        
    </div>
    </asp:Content>
