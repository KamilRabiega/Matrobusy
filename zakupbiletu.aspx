<%@ Page Title="Zakup biletu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="zakupbiletu.aspx.cs" Inherits="Projekt_autobus.zakupbiletu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Matrobusy %>" DeleteCommand="DELETE FROM [Przejazdy] WHERE [Id_przejazdu] = @Id_przejazdu" InsertCommand="INSERT INTO [Przejazdy] ([Id_user], [Dzien], [Godzina], [CzyZatwierdzony], [CzyOplacony]) VALUES (@Id_user, @Dzien, @Godzina, @CzyZatwierdzony, @CzyOplacony)" SelectCommand="SELECT [Id_przejazdu], [Id_user], [Dzien], [Godzina], [CzyZatwierdzony], [CzyOplacony] FROM [Przejazdy] WHERE (([Id_user] = @Id_user) AND ([CzyOplacony] = @CzyOplacony) AND ([CzyZatwierdzony] = @CzyZatwierdzony))" UpdateCommand="UPDATE [Przejazdy] SET [Id_user] = @Id_user, [Dzien] = @Dzien, [Godzina] = @Godzina, [CzyZatwierdzony] = @CzyZatwierdzony, [CzyOplacony] = @CzyOplacony WHERE [Id_przejazdu] = @Id_przejazdu">
        <DeleteParameters>
            <asp:Parameter Name="Id_przejazdu" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id_user" Type="Int32" />
            <asp:Parameter Name="Dzien" Type="String" />
            <asp:Parameter Name="Godzina" Type="String" />
            <asp:Parameter Name="CzyZatwierdzony" Type="Boolean" />
            <asp:Parameter Name="CzyOplacony" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Id_user" SessionField="id_user" Type="Int32" />
            <asp:Parameter DefaultValue="False" Name="CzyOplacony" Type="Boolean" />
            <asp:Parameter DefaultValue="True" Name="CzyZatwierdzony" Type="Boolean" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_user" Type="Int32" />
            <asp:Parameter Name="Dzien" Type="String" />
            <asp:Parameter Name="Godzina" Type="String" />
            <asp:Parameter Name="CzyZatwierdzony" Type="Boolean" />
            <asp:Parameter Name="CzyOplacony" Type="Boolean" />
            <asp:Parameter Name="Id_przejazdu" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div class="container text-center">
        <div class="row">
            <div class="col">
                <h1>Zakup biletu</h1>

                <asp:GridView style="margin-left: auto; margin-right: auto; font-size: 12px;" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id_przejazdu" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id_przejazdu" HeaderText="Id_przejazdu" InsertVisible="False" ReadOnly="True" SortExpression="Id_przejazdu" />
                        <asp:BoundField DataField="Dzien" HeaderText="Dzien" SortExpression="Dzien" />
                        <asp:BoundField DataField="Godzina" HeaderText="Godzina" SortExpression="Godzina" />
                        <asp:CheckBoxField DataField="CzyOplacony" HeaderText="CzyOplacony" SortExpression="CzyOplacony" />
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

            </div>
        </div>
        <asp:Label ID="LabelError" runat="server" Text="xx" Visible="False" ForeColor="Red"></asp:Label><br />
        <asp:Button class="btn btn-outline-secondary" ID="Button1" runat="server" Text="Zapłać" OnClick="Button1_Click" />
        <asp:Button class="btn btn-outline-secondary" ID="Button2" runat="server" Text="Powrót" OnClick="Button2_Click" style="margin-left: 10px;" />
    </div>
</asp:Content>
