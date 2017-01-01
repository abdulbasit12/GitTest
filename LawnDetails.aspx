<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LawnDetails.aspx.cs" Inherits="LawnDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 80%;
            margin: auto;
        }

        #slider {
            position: absolute;
            top: 40%;
            left: 0%;
            width: 50%;
            z-index: -1;
        }

        .tdstyle {
            position: relative;
            border: 1px solid lightgray;
            width: 50%;
            height: 50px;
            text-align: left;
        }

        .btn1 {
            position: absolute;
            height: 35px;
            width: 60%;
            background-color: darkorange;
            border-radius: 0px;
            color: white;
            font-family: Arial;
            font-size: 15px;
            top: 60%;
            left: 20%;
            border:none;  
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="content">
            <asp:Label ID="LabelName" runat="server" Text="Lawn Name" CssClass="lbName"></asp:Label>
            <asp:Label ID="LabelAdd" runat="server" Text="Lawn Address" CssClass="lbAddress"></asp:Label>
            <div id="Calendar">
                <asp:Label runat="server" CssClass="name" Text="Check Availability"></asp:Label>
                <asp:TextBox ID="CheckAvailb" runat="server" CssClass="lawndate" TextMode="Date"></asp:TextBox>
                <asp:Button runat="server" Text="Check Availability" CssClass="btn" OnClick="Unnamed_Click" />
                <asp:Button runat="server" Text="Book Lawn" CssClass="btn1" OnClick="Unnamed_Click1" />
            </div>
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
             <asp:Repeater runat="server" ID="SliderRep">
                        <ItemTemplate>
                           
                           <%-- <table>
                                <tr>
                                    <td>
                            <asp:Image ID="Imag" ImageUrl='<%# Eval("Uimg") %>' runat="server" Width="400px"/>
                                </td>
                                        </tr>
                                    </table>--%>
                            <div class='<%# Eval("Name").ToString() == "Cover" ? "item active" : "item" %>'>
                    <img src='<%# Eval("Uimg") %>' width="460" height="345" />
                </div>
                        </ItemTemplate>


                    </asp:Repeater>
                <%--<div class="item active">
                    <img src="lawn1.jpg" width="460" height="345" />
                </div>
                <div class="item">
                    <img src="lawn2.jpg" width="460" height="345" />
                </div>
                <div class="item">
                    <img src="lawn3.jpg" width="460" height="345" />
                </div>
                <div class="item">
                    <img src="lawn4.jpg" width="460" height="345" />
                </div>--%>
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
    <div id="details">
        <table style="width: 100%">
            <tr>
                <td class="tdstyle">Lawn Rent</td>
                <td class="tdstyle">
                    <asp:Label runat="server" Text="Lawn Rent" ID="lblrent"></asp:Label></td>
            </tr>
            <tr>
                <td class="tdstyle">Seating Capacity</td>
                <td class="tdstyle">
                    <asp:Label runat="server" Text="Lawn Capacity" ID="lblcapacity"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

