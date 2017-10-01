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

        .container {
            margin: 0 0 0 25px;
            width: 65%;
            display: inline-block;
        }

            .container .carousel {
                position: relative;
                width: 60%;
                background-color: white;
            }

        .carousel-inner > .item > img, .carousel-inner > .item > a > img {
            opacity: 1;
            width: 72%;
            max-height: 100%;
        }

        span.lname {
            display: block;
            font-size: 35px;
            margin: 70px 0 0 65px;
            color: #000;
        }

        span.laddress {
            display: block;
            font-size: 20px;
            margin: 0 0 0 70px;
            color: #000;
        }

        .carousel-control.left, .carousel-control.right {
            background: #fff;
        }

        .carousel-control {
            color: #000;
            opacity: 1;
        }

        .lawn-details {
            margin: 10px auto 0 0;
            background: #fff;
            display:block;
        }

        .h-details {
            margin: 20px auto 30px 0;
            width: 450px;
        }

            .h-details .active {
                border-bottom: 2px solid #FF8C00;
                padding-bottom:10px
            }

        .container .carousel {
            position: relative;
            width: 100%;
            background-color: white;
            height: 400px;
        }

        .carousel-inner > .item > img, .carousel-inner > .item > a > img {
            opacity: 1;
            width: 45%;
            max-height: 100%;
        }

        span.lname {
            display: block;
            font-size: 35px;
            margin: 70px 0 0 24px;
            color: #666666;
        }

        span.laddress {
            display: block;
            font-size: 20px;
            margin: 0 0 0 24px;
            color: #666666;
        }

        .carousel-inner {
            height: 400px;
            position: absolute;
        }

        .detail-table {
            width: 100%;
            font-size: 20px;
            border: 1px solid #b7b7b7;
            display:block;
        }

            .detail-table tbody tr {
                border-bottom: 1px solid #b7b7b7;
            }

                .detail-table tbody tr td {
                    padding: 10px;
            }
            .more-detail{display:inline-block; width:49%;}
            .lawn-details-SA {
            margin: 10px 0 0 0;
            background: #fff;
            display:block;
            }
            .lawn-info{display:block; width:96%; margin:0 auto;}
            .lawn-info .more-detail:nth-child(2){float:right;}
            .seating-arrangment{display:block; width:96%; margin:0 auto 20px auto;}
            .seating-arrangment .lawn-details-SA .detail-table-SA{display: block;}
            .seating-arrangment .lawn-details-SA .detail-table-SA tbody{display:block;}
            .seating-arrangment .lawn-details-SA .detail-table-SA tbody tr{display:block;}
            .seating-arrangment .lawn-details-SA .detail-table-SA tbody tr td{padding:20px 15px 20px 0; width:13.8%; display:inline-block;}
            .seating-arrangment .lawn-details-SA .detail-table-SA tbody tr td:first-child{margin-left:3px;}
            .seating-arrangment .lawn-details-SA .detail-table-SA tbody tr td input{margin-left:4px;}
            .seating-arrangment .lawn-details-SA .detail-table-SA tbody tr td span{display:inline-block;}
            .lawn-info .more-detail .lawn-details .detail-table tbody{display:table; width:100%;}
    </style>    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="content">
            <span class="lname">
                <asp:Label ID="LabelName" runat="server" Text="Lawn Name"></asp:Label>
            </span>
            <span class="laddress">
                <i class="fa fa-map-marker"></i>
                <asp:Label ID="LabelAdd" runat="server" Text="Lawn Address"></asp:Label>
            </span>
        </div>
        <div class="container" id="slider">
            <br />
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <asp:Repeater runat="server" ID="SliderRep">
                        <ItemTemplate>
                            <div class='<%# Eval("Name").ToString() == "Cover" ? "item active" : "item" %>'>
                                <img src='<%# Eval("Uimg") %>' />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
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
        <div id="Calendar">
            <asp:Label runat="server" CssClass="name" Text="Check Availability"></asp:Label>
            <asp:TextBox ID="CheckAvailb" runat="server" CssClass="lawndate"  TextMode="Date" OnDataBinding="CheckAvailb_DataBinding"></asp:TextBox>
            <asp:Button runat="server" Text="Check Availability" CssClass="btn1" OnClick="Unnamed_Click" />
            <asp:Button runat="server" Text="Book Now" CssClass="btn1 position" OnClick="Unnamed_Click1" />
            <asp:label id="booking_msg" runat="server" class="alert alert-dismissable fade in">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
            </asp:label>
        </div>
        <div class="lawn-info">
            <div class="more-detail">
                <h3 class="h-details"><span class="active">More Details</span></h3>
                <div class="lawn-details">
                    <table class="detail-table">
                        <tr>
                            <td>Lawn Rent</td>
                            <td>
                                <asp:Label runat="server" Text="Lawn Rent" ID="lblrent"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Seating Capacity</td>
                            <td>
                                <asp:Label runat="server" Text="Lawn Capacity" ID="lblcapacity"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Air Condition</td>
                            <td>Centerlized</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="more-detail">
                <h3 class="h-details"><span class="active">More Details</span></h3>
                <div class="lawn-details">
                    <table class="detail-table">
                        <tr>
                            <td>Bride Room</td>
                            <td>
                                <asp:Label runat="server" Text="Yes"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Playing Area</td>
                            <td>
                                <asp:Label runat="server" Text="Yes"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Washroom</td>
                            <td>Yes</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="seating-arrangment">
            <h3 class="h-details"><span class="active">Seating Arrangments</span></h3>
            <div class="lawn-details-SA">
                <table class="detail-table-SA">
                    <tr>
                        <td>
                            <input type="radio" id="RadioButton0" runat="server" name="radio" checked/>
                            <span>
                                <img src="Seating/img1.png" class="seating-images" /></span>
                        </td>
                        <td>
                            <input type="radio" id="RadioButton1" runat="server" name="radio"/>
                            <span>
                                <img src="Seating/img2.png" class="seating-images" /></span>
                        </td>
                        <td>
                            <input type="radio" id="RadioButton2" runat="server" name="radio"/>
                            <span>
                                <img src="Seating/img3.png" class="seating-images" /></span>
                        </td>
                        <td>
                            <input type="radio" id="RadioButton3" runat="server" name="radio"/>
                            <span>
                                <img src="Seating/img4.png" class="seating-images" /></span>
                        </td>
                        <td>
                            <input type="radio" id="RadioButton4" runat="server" name="radio"/>
                            <span>
                                <img src="Seating/img5.png" class="seating-images" /></span>
                        </td>
                        <td>
                            <input type="radio" id="RadioButton5" runat="server" name="radio"/>
                            <span>
                                <img src="Seating/img6.png" class="seating-images" /></span>
                        </td>
                        <td>
                            <input type="radio" id="RadioButton6" runat="server" name="radio"/>
                            <span>
                                <img src="Seating/img7.png" class="seating-images" /></span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>