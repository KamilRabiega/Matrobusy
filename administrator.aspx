<%@ Page Title="Panel administratora" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="administrator.aspx.cs" Inherits="Projekt_autobus.administrator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- SQLSource dla GridView -->
    <asp:SqlDataSource ID="Gridview" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT        dbo.Przejazdy.Id_przejazdu AS [Id przejazdu], dbo.Users.Login AS [Login użytkownika], dbo.Przystanki_p.P_poczatkowe AS [Przystanek początkowy], dbo.Przystanki_k.P_koncowe AS [Przystanek końcowy], 
                         dbo.Przejazdy.Dzien AS Dzień, dbo.Przejazdy.Godzina, dbo.Przejazdy.CzyZatwierdzony AS [Przejazd zatwierdzony], dbo.Przejazdy.CzyOplacony AS [Przejazd opłacony]
FROM            dbo.Przejazdy INNER JOIN
                         dbo.Przystanki_k ON dbo.Przejazdy.P_koncowy = dbo.Przystanki_k.Id_przystanku INNER JOIN
                         dbo.Przystanki_p ON dbo.Przejazdy.P_poczatkowy = dbo.Przystanki_p.Id_przystanku INNER JOIN
                         dbo.Users ON dbo.Przejazdy.Id_user = dbo.Users.Id_user
WHERE dbo.Przejazdy.Dzien BETWEEN @oddnia AND @dodnia">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="01.01.2022" Name="oddnia" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" DefaultValue="31.12.2035" Name="dodnia" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <!-- SQLSource dla FormView -->
    <asp:SqlDataSource ID="Formview" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" DeleteCommand="DELETE FROM Przejazdy WHERE Id_przejazdu=@Id_przejazdu" InsertCommand="INSERT INTO [Przejazdy] ([Id_user], [P_poczatkowy], [P_koncowy], [Dzien], [Godzina], [CzyZatwierdzony], [CzyOplacony]) VALUES (@Id_user, @P_poczatkowy, @P_koncowy, @Dzien, @Godzina, @CzyZatwierdzony, @CzyOplacony)" SelectCommand="SELECT Id_przejazdu, Id_user, P_poczatkowy, P_koncowy, Dzien, Godzina, CzyZatwierdzony, CzyOplacony FROM [Przejazdy] WHERE ([Id_przejazdu] = @Id_przejazdu)" UpdateCommand="UPDATE [Przejazdy] SET [Id_user] = @Id_user, [P_poczatkowy] = @P_poczatkowy, [P_koncowy] = @P_koncowy, [Dzien] = @Dzien, [Godzina] = @Godzina, [CzyZatwierdzony] = @CzyZatwierdzony, [CzyOplacony] =@CzyOplacony WHERE [Id_przejazdu] = @Id_przejazdu">
        <DeleteParameters>
            <asp:Parameter Name="Id_przejazdu" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id_user" />
            <asp:Parameter Name="P_poczatkowy" />
            <asp:Parameter Name="P_koncowy" />
            <asp:Parameter Name="Dzien" />
            <asp:Parameter Name="Godzina" />
            <asp:Parameter Name="CzyZatwierdzony" />
            <asp:Parameter Name="CzyOplacony" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="" Name="Id_przejazdu" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_user" />
            <asp:Parameter Name="P_poczatkowy" />
            <asp:Parameter Name="P_koncowy" />
            <asp:Parameter Name="Dzien" />
            <asp:Parameter Name="Godzina" />
            <asp:Parameter Name="CzyZatwierdzony" />
            <asp:Parameter Name="CzyOplacony" />
            <asp:Parameter Name="Id_przejazdu" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- SQLSource dla Users -->
    <asp:SqlDataSource ID="Uzytkownicy" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_user], [Login] FROM [Users]"></asp:SqlDataSource>

    <!-- SQLSource dla Poczatkowy przystanek -->
    <asp:SqlDataSource ID="Poczatkowy" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_przystanku], [P_poczatkowe] FROM [Przystanki_p]"></asp:SqlDataSource>

    <!-- SQLSource dla Koncowy przystanek -->
    <asp:SqlDataSource ID="Koncowy" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" SelectCommand="SELECT [Id_przystanku], [P_koncowe] FROM [Przystanki_k]"></asp:SqlDataSource>

        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center" style="margin-bottom: 25px;">
                    <asp:Panel ID="Szukanie1" runat="server">
                        <h2>Planowanie przejazdów</h2>
                    <asp:Label ID="Label5" runat="server" Style="text-decoration: underline;" Text="Wyszukaj przejazdów aby zaplanować trasy."></asp:Label>
                    <table style="margin-left: auto; margin-right: auto;">
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Od dnia: "></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" placeHolder="YYYY-MM-DD"></asp:TextBox></td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Style="margin-left: 5px;" Height="30px" ImageUrl="images/calendar.png" Width="30px" OnClick="ImageButton1_Click" /></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Do dnia: "></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" placeHolder="YYYY-MM-DD"></asp:TextBox></td>
                                <td>
                                    <asp:ImageButton ID="ImageButton2" runat="server" Style="margin-left: 5px;" Height="30px" ImageUrl="images/calendar.png" Width="30px" OnClick="ImageButton2_Click" /></td>
                            </tr>
                        </tbody>
                    </table>
                    <br />
                    <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Wyszukaj" OnClick="Button1_Click" />
                    <asp:Button class="btn btn-outline-secondary" ID="Button2" runat="server" Text="Anuluj" OnClick="Button2_Click" style="margin-left: 10px;" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="400px" Visible="False" ShowGridLines="True">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" Width="400px" ShowGridLines="True">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                    </asp:Panel>
                    <asp:Panel ID="Ponowne1" runat="server" Visible="false">
                        <asp:Button class="btn btn-outline-secondary" ID="Button3" runat="server" Text="Wyszukaj ponownie" OnClick="Button3_Click" />
                    </asp:Panel>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <asp:Panel ID="Grid1" runat="server" Visible="False">
                    <asp:GridView ID="GridView1" runat="server" style="margin-left: auto; margin-right: auto;" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id przejazdu" DataSourceID="Gridview" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#607D8B" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    </asp:Panel>
                </div>
                <div class="col-md-4">
                    <asp:Panel ID="Form1" runat="server" Visible="False">
                    <asp:FormView ID="FormView1" style="margin-left: auto; margin-right: auto; border: 1px solid black;" runat="server" AllowPaging="True" DataKeyNames="Id_przejazdu" DataSourceID="Formview" CellPadding="4" ForeColor="#333333">
                        <EditItemTemplate>
                            Id_przejazdu:
                            <asp:Label ID="Id_przejazduLabel1" runat="server" Text='<%# Eval("Id_przejazdu") %>' />
                            <br />
                            Id_user:
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Uzytkownicy" DataTextField="Login" DataValueField="Id_user" SelectedValue='<%# Bind("Id_user") %>'>
                            </asp:DropDownList>
                            <br />
                            P_poczatkowy:
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Poczatkowy" DataTextField="P_poczatkowe" DataValueField="Id_przystanku" SelectedValue='<%# Bind("P_poczatkowy") %>'>
                            </asp:DropDownList>
                            <br />
                            P_koncowy:
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="Koncowy" DataTextField="P_koncowe" DataValueField="Id_przystanku" SelectedValue='<%# Bind("P_koncowy") %>'>
                            </asp:DropDownList>
                            <br />
                            Dzien:
                            <asp:TextBox ID="DzienTextBox" runat="server" Text='<%# Bind("Dzien") %>' />
                            <br />
                            Godzina:
                            <asp:TextBox ID="GodzinaTextBox" runat="server" Text='<%# Bind("Godzina") %>' />
                            <br />
                            CzyZatwierdzony:
                            <asp:CheckBox ID="CzyZatwierdzonyCheckBox" runat="server" Checked='<%# Bind("CzyZatwierdzony") %>' />
                            <br />
                            CzyOplacony:
                            <asp:CheckBox ID="CzyOplaconyCheckBox" runat="server" Checked='<%# Bind("CzyOplacony") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            Id_user:
                            <asp:TextBox ID="Id_userTextBox" runat="server" Text='<%# Bind("Id_user") %>' />
                            <br />
                            P_poczatkowy:
                            <asp:TextBox ID="P_poczatkowyTextBox" runat="server" Text='<%# Bind("P_poczatkowy") %>' />
                            <br />
                            P_koncowy:
                            <asp:TextBox ID="P_koncowyTextBox" runat="server" Text='<%# Bind("P_koncowy") %>' />
                            <br />
                            Dzien:
                            <asp:TextBox ID="DzienTextBox" runat="server" Text='<%# Bind("Dzien") %>' />
                            <br />
                            Godzina:
                            <asp:TextBox ID="GodzinaTextBox" runat="server" Text='<%# Bind("Godzina") %>' />
                            <br />
                            CzyZatwierdzony:
                            <asp:CheckBox ID="CzyZatwierdzonyCheckBox" runat="server" Checked='<%# Bind("CzyZatwierdzony") %>' />
                            <br />
                            CzyOplacony:
                            <asp:CheckBox ID="CzyOplaconyCheckBox" runat="server" Checked='<%# Bind("CzyOplacony") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Id_przejazdu:
                            <asp:Label ID="Id_przejazduLabel" runat="server" Text='<%# Eval("Id_przejazdu") %>' />
                            <br />
                            Id_user:
                            <asp:Label ID="Id_userLabel" runat="server" Text='<%# Bind("Id_user") %>' />
                            <br />
                            P_poczatkowy:
                            <asp:Label ID="P_poczatkowyLabel" runat="server" Text='<%# Bind("P_poczatkowy") %>' />
                            <br />
                            P_koncowy:
                            <asp:Label ID="P_koncowyLabel" runat="server" Text='<%# Bind("P_koncowy") %>' />
                            <br />
                            Dzien:
                            <asp:Label ID="DzienLabel" runat="server" Text='<%# Bind("Dzien") %>' />
                            <br />
                            Godzina:
                            <asp:Label ID="GodzinaLabel" runat="server" Text='<%# Bind("Godzina") %>' />
                            <br />
                            CzyZatwierdzony:
                            <asp:CheckBox ID="CzyZatwierdzonyCheckBox" runat="server" Checked='<%# Bind("CzyZatwierdzony") %>' Enabled="false" />
                            <br />
                            CzyOplacony:
                            <asp:CheckBox ID="CzyOplaconyCheckBox" runat="server" Checked='<%# Bind("CzyOplacony") %>' Enabled="false" />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:FormView>
                    </asp:Panel>
                    
                </div>
            </div>
        </div>
</asp:Content>
