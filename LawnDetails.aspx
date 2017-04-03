<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LawnDetails.aspx.cs" Inherits="LawnDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 40%;
            margin: auto;
        }

        /*#slider {
            position: absolute;
            top: 40%;
            left: 0%;
            width: 50%;
            z-index: -1;
        }*/

        .tdstyle {
            position: relative;
            border: 1px solid lightgray;
            width: 50%;
            height: 50px;
            text-align: left;
        }

        .container {
            margin: 0 auto 0 auto;
        }

            .container .carousel {
                position: relative;
                width: 60%;
                background-color: white;
            }

        .carousel-inner > .item > img, .carousel-inner > .item > a > img {
            opacity: 1;
            width: 39%;
            max-height: 100%;
        }

        span.lname {
            display: block;
            font-size: 35px;
            margin: 70px 0 0 65px;
            color:#666666;
        }
        span.laddress{
            display:block; font-size:20px; margin:0 0 0 70px; color:#666666;
        }
        .carousel-control.left, .carousel-control.right{background:#fff;}
        .carousel-control{color:#000;}
        .lawn-details{margin:10px auto 0 54px; background:#fff; width:703px;}
        .h-details{margin:20px auto 5px 54px; width:703px; border-bottom:1px solid #b7b7b7}
        .h-details .active{border-bottom:2px solid #FF8C00;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="content">
            <span class="lname">
                <i class="glyphicon glyphicon-home"></i>
                <asp:Label ID="LabelName" runat="server" Text="Lawn Name"></asp:Label>
            </span>
            <span class="laddress">
                <i class="fa fa-map-marker"></i>
                <asp:Label ID="LabelAdd" runat="server" Text="Lawn Address"></asp:Label>
            </span>
        </div>
        <div id="Calendar">
                <asp:Label runat="server" CssClass="name" Text="Check Availability"></asp:Label>
                <asp:TextBox ID="CheckAvailb" runat="server" CssClass="lawndate" TextMode="Date"></asp:TextBox>
                <asp:Button runat="server" Text="Check Availability" CssClass="btn1" OnClick="Unnamed_Click" />
                <asp:Button runat="server" Text="Book Lawn" CssClass="btn1 position" OnClick="Unnamed_Click1" />
            </div>
    </div>
    <div class="container" id="slider">
        <br />
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <%--<ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>--%>
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
                            <img src='<%# Eval("Uimg") %>' />
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
        <div class="cb"></div>
    </div>
    <h3 class="h-details"><span class="active">More Details</span></h3>
    <div class="lawn-details">
        <table>
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

