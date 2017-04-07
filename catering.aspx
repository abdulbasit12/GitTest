<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="catering.aspx.cs" Inherits="catering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="jquery-3.1.1.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("h3").click(function () {
                if ($(this).parent("div").children(".menus").css("display") == "none") {
                    //$("div .menu-items").slideUp();
                    //$("h3 span").removeClass("active");
                    $(this).children("span").addClass("active");
                    $(this).parent("div").children(".menus").slideDown();
                }
                else {
                    $(this).children("span").removeClass("active");
                    $(this).parent("div").children(".menus").slideUp();
                }
            });
        });
    </script>
    <style>
        body{overflow:scroll;}

        .main div {
            position: relative;
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
            background:rgba(65, 175, 154, 0.5);
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
            .main div .menus{display:none; margin:0; width:100%;}
            .main div .menu-items{background-color: white;color: black;width:100%;margin:0; font-size:20px;}
            .main div .menu-items tr td{padding:10px;}
            .main div .menu-items tr td span{font-size:25px;}
            .main div .menu-items tr td span:nth-child(3){float:right; color:#ff8c00; font-size:16px;}
            .main div .menu-items tr td input{margin-right:5px; width:20px; height:20px;}
            .main .btn-confirm{margin-top:20px; display:block;}
            .main .btn-confirm input{margin:auto; display:block; color:#fff; background:#FC8C0F; border:none; padding:10px 20px; font-size:30px; font-family:initial; }
            .note{display:block; text-align:center; margin:10px auto; color:#ff0000; font-size:15px; font-family:initial;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <h2 class="fm">Food Menus</h2>
        <span class="menu-heading">Select Food Items For Your Event</span>
        <div>
            <h3>Foods<span></span></h3>
            <div class="menus">
                <table class="menu-items">
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Mutton Biryani</span>
                            <span>Rs:100</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>White Chicken Karhai</span>
                            <span>Rs:80</span></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>White Mutton Karhai</span>
                            <span>Rs:110</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Vegitable Handi</span>
                            <span>Rs:60</span></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Daal Makhni Handi</span>
                            <span>Rs:50</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>pioneer Rashmi Handi</span>
                            <span>Rs:70</span></td>
                    </tr>
                </table>
            </div>
        </div>
        <br/>
        <div>
            <h3>BBQ<span></span></h3>
            <div class="menus">
                <table class="menu-items">
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Chicken Tikka</span>
                            <span>Rs:40</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Chicken Malai Botti</span>
                            <span>Rs:40</span></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Chicken Bihari Botti</span>
                            <span>Rs:40</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Fish Tikka</span>
                            <span>Rs:70</span></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox runat="server"/>
                            <span>Chicken Sikh Kabab</span>
                            <span>Rs:40</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Afghani Botti</span>
                            <span>Rs:50</span></td>
                    </tr>
                </table>
            </div>
        </div>
        <br />
        <div>
            <h3>Cold Bevrages<span></span></h3>
            <div class="menus">
                <table class="menu-items">
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>7up</span>
                            <span>Rs:25</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Pepsi</span>
                            <span>Rs:25</span></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Coka Cola</span>
                            <span>Rs:25</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Marinda</span>
                            <span>Rs:25</span></td>
                    </tr>
                </table>
            </div>
        </div>
        <br />
        <div>
            <h3>ICECREAM<span></span></h3>
            <div class="menus">
                <table class="menu-items">
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Strawberry</span>
                            <span>Rs:35</span></td>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Pineapple</span>
                            <span>Rs:35</span></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox runat="server"/>
                            <span>Chocolate</span><span>Rs:35</span></td>
                        <td><asp:CheckBox runat="server"/>
                            <span>Crunch Kulfi</span>
                            <span>Rs:35</span></td>
                    </tr>
                </table>
            </div>
        </div>
        <p class="note">Note: All item mentioned prices are for per person</p>
        <span class="btn-confirm"><asp:Button runat="server" text="Confirm Menu"/></span>
    </div>
</asp:Content>

