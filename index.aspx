<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="searchfilter">
            <div id="search-area">All Areas &emsp; &emsp; &emsp; &emsp; &emsp; ▼</div>
            <div id="drop-search-area">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server" ID="SearchArea"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Areas</li>
                </ul>
                <h4 style="padding-top: 10px; padding-left: 5px;">Popular Areas</h4>
            </div>
            <div id="search-capacity">All Capacities &emsp; &emsp; &emsp; &emsp; ▼</div>
            <div id="drop-search-capactiy">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Capacities</li>
                </ul>
            </div>
            <div id="search-button">
                <asp:Button runat="server" Text="Search" Style="height: 50px; line-height: 30px; border-radius: 0px;" CssClass="button" OnClick="Unnamed2_Click" />
            </div>
        </div>
        <div class="container" id="slider">
            <br />
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="1.jpg"  width="100" height="100" />
                    </div>
                    <div class="item">
                        <img src="2.jpg"  width="460" height="345" />
                    </div>
                    <div class="item">
                        <img src="3.jpg" width="460" height="345" />
                    </div>

                    <div class="item">
                        <img src="4.jpg" width="460" height="345" />
                    </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        </div>
</asp:Content>
