<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="catering.aspx.cs" Inherits="catering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="jquery-3.1.1.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("h3").click(function () {
                if ($(this).parent("div").children("p").css("display") == "none") {
                    $("div p").slideUp();
                    $("h3 span").removeClass("active");
                    $(this).children("span").addClass("active");
                    $(this).parent("div").children("p").slideDown();
                }
                else {
                    $(this).children("span").removeClass("active");
                    $(this).parent("div").children("p").slideUp();
                }
            });
            $("h3 span").click(function () {
                
                
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div>
            <h3>BBQ<span></span></h3>
            <p>something something something something something something something something something something something something</p>
        </div>
        <br />
        <div>
            <h3>Drinks<span></span></h3>
            <p>something something something something something something something something something something something something</p>
        </div>
        <br />
        <div>
            <h3>Deserts<span></span></h3>
            <p>something something something something something something something something something something something something</p>
        </div>
    </div>
</asp:Content>

