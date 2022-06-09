<%@ Page Title="Utwórz nową trasę" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nowatrasa.aspx.cs" Inherits="Projekt_autobus.nowatrasa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- SQL dla kierowcy -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_user], [Nazwisko], [Rola] FROM [Users] WHERE ([Rola] = @Rola)">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="Rola" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <!-- SQL dla pojazdu -->
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_pojazdu], [Rejestracja] FROM [Pojazdy]"></asp:SqlDataSource>

    <!-- SQL dla przystanku początkowego -->
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_przystanku], [P_poczatkowe] FROM [Przystanki_p]"></asp:SqlDataSource>

    <!-- SQL dla przystanku końcowego -->
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_przystanku], [P_koncowe] FROM [Przystanki_k]"></asp:SqlDataSource>


    <div class="container">
        <div class="row text-center">
            <div class="col">
                <h3>Dodaj nową trasę</h3>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Calendar style="margin-left: auto; margin-right: auto; margin-top: 20px;" ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="400px" Visible="False" ShowGridLines="True">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
            </div>    
        </div>
        <div class="row text-center">
            <div class="col">
                <table style="margin-left: auto; margin-right: auto;">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Wybierz dzień: "></asp:Label></td>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox1" runat="server" placeHolder="YYYY-MM-DD"></asp:TextBox>
                                
                                </td>
                            <td><asp:ImageButton ID="ImageButton1" runat="server" Style="margin-right: 5px;" Height="30px" ImageUrl="images/calendar.png" Width="30px" OnClick="ImageButton1_Click" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Wybierz godzinę: "></asp:Label></td>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox2" runat="server" placeHolder="HH:MM"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Kierowca: "></asp:Label></td>
                            <td colspan="2">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nazwisko" DataValueField="Id_user" Width="188px"></asp:DropDownList></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label4" runat="server" Text="Pojazd: "></asp:Label></td>
                            <td colspan="2">
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Rejestracja" DataValueField="Id_pojazdu" Width="188px"></asp:DropDownList></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label5" runat="server" Text="Przystanek początkowy: "></asp:Label></td>
                            <td colspan="2">
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="P_poczatkowe" DataValueField="Id_przystanku" Width="188px"></asp:DropDownList></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label6" runat="server" Text="Przystanek końcowy: "></asp:Label></td>
                            <td colspan="2">
                                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="P_koncowe" DataValueField="Id_przystanku" Width="188px"></asp:DropDownList></td>
                            <td></td>
                        </tr>
                        <!-- Przystanki -->
                        <tr style="border-top: 1px solid black;">
                            <td><asp:Label ID="Label7" runat="server" Text="Przystanek" style="text-decoration: underline;"></asp:Label></td>
                            <td><asp:Label ID="Label8" runat="server" Text="Wsiadający" style="text-decoration: underline;"></asp:Label></td>
                            <td><asp:Label ID="Label9" runat="server" Text="Wysiadający" style="text-decoration: underline;"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label10" runat="server" Text="Żary - Dworzec"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label11" runat="server" Text="Żary - Szkoła nr 1"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox5" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox6" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label12" runat="server" Text="Żary - Szkoła nr 2"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox7" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox8" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label13" runat="server" Text="Żary - Centrum"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox9" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox10" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label14" runat="server" Text="Żary - Szkoła nr 3"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox11" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox12" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label15" runat="server" Text="Żary - Kadłubia"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox13" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox14" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label16" runat="server" Text="Żary - Koszary"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox15" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox16" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label17" runat="server" Text="Marszów - Główny"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox17" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox18" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label18" runat="server" Text="Żagań - Wojsko"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox19" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox20" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label19" runat="server" Text="Żagań - Szkoła nr 4"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox21" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox22" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label20" runat="server" Text="Żagań - Centrum"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox23" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox24" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label21" runat="server" Text="Żagań - Szkoła nr 5"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox25" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox26" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Żagań - Dworzec</td>
                            <td><asp:TextBox ID="TextBox27" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBox28" runat="server" TextMode="Number" min="0" max="50" Width="188px"></asp:TextBox></td>
                        </tr>

                    </tbody>
                </table>
                <asp:Button class="btn btn-outline-secondary" ID="Button2" runat="server" Text="Dodaj trasę" Style="margin-top: 10px;" OnClick="Button2_Click" />
                <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Powrót" Style="margin-left: 10px; margin-top: 10px;" OnClick="Button1_Click" /><br />
                <asp:Label ID="LabelError" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
