<%@ Page Title="Strona główna" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projekt_autobus._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row text-center">
            <div class="col">
        <h2>
            Witamy w aplikacji Matrobusy!
        </h2>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <asp:Image class="img-responsive" style="max-width: 100%; height: auto;" ID="Image1" runat="server" ImageUrl="images/matrobusy.png" /><br /><br />
                    <p style="font-size: large">
                        Strona powstała aby pomóc uczniom dostać się na każda godzinę lekcyjna do szkoły. <br />
                        Jest ona łatwa w użyciu, dzięki temu dostępna dla każdego. <br />
                        Wszystkie dane, które uda się zebrać z tej aplikacji mają pomóc w stworzeniu nowego 
                        ulepszonego rozkładu jazdy, przystosowanego do potrzeb uczniów.
                    </p>
            </div>
        </div>
        
        
    </div>
</asp:Content>
