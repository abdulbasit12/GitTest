<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="catering.aspx.cs" Inherits="catering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="jquery-3.1.1.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("h3").click(function () {
                if ($(this).parent("div").children(".menu-items").css("display") == "none") {
                    //$("div .menu-items").slideUp();
                    $("h3 span").removeClass("active");
                    $(this).children("span").addClass("active");
                    $(this).parent("div").children(".menu-items").slideDown();
                }
                else {
                    $(this).children("span").removeClass("active");
                    $(this).parent("div").children(".menu-items").slideUp();
                }
            });
        });
    </script>
    <style>
        .main div {
            position: relative;
            background: rgba(65, 175, 154, 0.5);
            width: 70%;
            margin: auto;
            color: #000;
            font-size: 30px;
            font-family:serif;
        }

        .active {
            background-position-x: 35px!important;
        }

        .main div p {
            background-color: white;
            color: black;
            width: 100%;
            margin: 0;
            display: none;
        }

        .main div h3 {
            position: relative;
            margin: 0;
            font-size: 33px;
            padding: 15px;
        }

        h3 span {
            float: right;
        }

        body {
            font-family: arial;
        }

        .main {
            margin-top: 70px;
        }

            .main div h3 span {
                height: 35px;
                width: 35px;
                background-repeat: no-repeat;
                background: url("plus-minus.png");
                background-size: 94px;
            }
            .fm{display:block; text-align:center; font-family:'Conv_zektonrg'; font-size:40px;}
            .menu-heading{display:block; text-align:center; font-size:50px; font-family:'Conv_zektonrg'; color:#FC8C0F; margin-bottom:20px;}
            .main div .menu-items{background-color: white;color: black;width:100%;margin:0; font-size:20px; display:none;}
            .main div .menu-items tr td{padding:10px;}
            .main div .menu-items tr td span{font-size:25px;}
            .main div .menu-items tr td input{margin-right:5px; width:20px; height:20px;}
            .main .btn-confirm{margin-top:20px; display:block;}
            .main .btn-confirm input{margin:auto; display:block; color:#fff; background:#FC8C0F; border:none; padding:10px 20px; font-size:30px; font-family:initial; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <h2 class="fm">Food Menus</h2>
        <span class="menu-heading">Select Food Items For Your Event</span>
        <div>
            <h3>Foods<span></span></h3>
            <table class="menu-items">
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>Mutton Biryani</span></td>
                        <td><asp:CheckBox runat="server"/><span>White Chicken Karhai</span></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>White Mutton Karhai</span></td>
                        <td><asp:CheckBox runat="server"/><span>Vegitable Handi</span></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>Daal Makhni Handi</span></td>
                        <td><asp:CheckBox runat="server"/><span>pioneer Rashmi Handi</span></td>
                    </tr>
                </table>
        </div>
        <br/>
        <div>
            <h3>BBQ<span></span></h3>
                <table class="menu-items">
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>Chicken Tikka</span></td>
                        <td><asp:CheckBox runat="server"/><span>Chicken Malai Botti</span></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>Chicken Bihari Botti</span></td>
                        <td><asp:CheckBox runat="server"/><span>Fish Tikka</span></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>Chicken Sikh Kabab</span></td>
                        <td><asp:CheckBox runat="server"/><span>Afghani Botti</span></td>
                    </tr>
                </table>
        </div>
        <br />
        <div>
            <h3>Cold Bevrages<span></span></h3>
            <table class="menu-items">
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>7up</span></td>
                        <td><asp:CheckBox runat="server"/><span>Pepsi</span></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>Coka Cola</span></td>
                        <td><asp:CheckBox runat="server"/><span>Marinda</span></td>
                    </tr>
                </table>
        </div>
        <br />
        <div>
            <h3>ICECREAM<span></span></h3>
            <table class="menu-items">
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>Strawberry</span></td>
                        <td><asp:CheckBox runat="server"/><span>Pineapple</span></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox runat="server"/><span>Chocolate</span></td>
                        <td><asp:CheckBox runat="server"/><span>Crunch Kulfi</span></td>
                    </tr>
                </table>
        </div>
        <span class="btn-confirm"><asp:Button runat="server" text="Confirm Menu"/></span>
    </div>
</asp:Content>

