<%@ Page Title="Zaplanuj przejazd" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="planujprzejazd.aspx.cs" Inherits="Projekt_autobus.planujprzejazd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_przystanku], [P_poczatkowe] FROM [Przystanki_p]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_przystanku], [P_koncowe] FROM [Przystanki_k]"></asp:SqlDataSource>

    <div class="container">
        <div class="row">
            <div class="col text-center">
                <table style="margin-left: auto; margin-right: auto;">
                    <tr>
                        <td>
                            <h1>Zaplanuj przejazd</h1>
                        </td>
                    </tr>
                </table>

            </div>
        </div>
        <div class="row">
            <div class="col text-center">
                <table style="margin-left: auto; margin-right: auto;">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Przystanek początkowy: "></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="P_poczatkowe" DataValueField="Id_przystanku"></asp:DropDownList><br />
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Przystanek końcowy: "></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="P_koncowe" DataValueField="Id_przystanku"></asp:DropDownList></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Dzień: "></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="188px" Height="27px" placeHolder="YYYY-MM-DD"></asp:TextBox></td>
                            <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Style="margin-left: 5px;" Height="30px" ImageUrl="images/calendar.png" Width="30px" OnClick="ImageButton1_Click" />

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Godzina: "></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="188px" Height="27px" placeHolder="hh:mm"></asp:TextBox></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table><br />
                <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Zamów przejazd" OnClick="Button1_Click" />
                <asp:Button class="btn btn-outline-secondary" ID="Button2" runat="server" Text="Anuluj" OnClick="Button2_Click" /><br />
                <asp:Label ID="LabelError" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
            </div>
        </div>
        <div class="row">
            <asp:Calendar ID="Calendar1" runat="server" style="margin-left: auto; margin-right: auto; margin-top: 20px;" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="400px" Visible="False" ShowGridLines="True">
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


</asp:Content>
