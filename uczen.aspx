<%@ Page Title="Panel ucznia" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="uczen.aspx.cs" Inherits="Projekt_autobus.uczen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <div class="col">
                <div class="card m-auto" style="width: 18rem;">
                    <img src="images/atob.png" class="card-img-top" alt="planuj przejazdy">
                    <div class="card-body">
                        <h5 class="card-title">Przejazdy</h5>
                        <p class="card-text">W tym miejscu możesz zaplanować przyszły przejazd, przejrzeć zaplanowane przejazdy oraz sprawdzić historię.</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><a href="planujprzejazd.aspx" class="card-link">Zaplanuj przejazd</a></li>
                        <li class="list-group-item"><a href="przejazdy.aspx" class="card-link">Twoje przejazdy</a></li>
                        <li class="list-group-item"><a href="historiaprzejazdow.aspx" class="card-link">Historia</a></li>
                    </ul>
                </div>
            </div>
            <div class="col">
                <div class="card m-auto" style="width: 18rem;">
                    <img src="images/tickets.png" class="card-img-top" alt="kup bilet">
                    <div class="card-body">
                        <h5 class="card-title">Bilety</h5>
                        <p class="card-text">W tym miejscu możesz dokonać zakupu biletu oraz sprawdzić zakupione wcześniej bilety.</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><a href="zakupbiletu.aspx" class="card-link">Zakup biletu</a></li> 
                        <!-- <li class="list-group-item"><a href="aktywnebilety.aspx" class="card-link">Twoje bilety</a></li> -->
                    </ul>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
