<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lawns.aspx.cs" Inherits="Lawns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        /*.btn2 {
            position: relative;
            height: 35px;
            width: 50%;
            background-color: darkorange;
            border-radius: 0px;
            color: white;
            font-family: Arial;
            font-size: 15px;
            left: 50%;
            border: none;
        }*/

        #Repeater {
            position: relative;
            width: 100%;
            height: 150px;
            /*left: 10%;*/
            margin: auto;
            background-color: white;
            border: none;
        }

        .Rimg {
            position: relative;
            height: 100%;
            width: 100%;
        }

        #detail1 {
            position: relative;
            width: 50%;
            margin:auto
        }

        .dataimg {
            position: absolute;
            top: 5%;
            border: 1px solid lightgray;
            height: 80px;
            width: 20%;
            left: 5%;
        }

        #img {
            position: absolute;
            top: 5%;
            border: 1px solid lightgray;
            height: 90px;
            width: 15%;
            left: 5%;
        }

        #btn_avlble {
            position: relative;
            width: 50%;
            margin: auto;
        }

        #tb_btn {
            position: absolute;
            height: auto;
            float: right;
            width: 20%;
            right: 5%;
            top: 0%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="searchfilterL">
            <div id="search-areaL">All Areas</div>
            <div id="drop-search-areaL">
                <div class="searchbar">
                    <asp:TextBox ID="SearchArea" CssClass="searchtext" runat="server" onkeyup="myFunction()"></asp:TextBox>
                </div>
                <ul id="myUL">
                    <li><a href="#">Defence</a></li>
                    <li><a href="#">Korangi</a></li>
                    <li><a href="#">Nazimabad</a></li>
                    <li><a href="#">Jamshed Road</a></li>
                    <li><a href="#">Gulistan e Johar</a></li>
                    <li><a href="#">Water Pump</a></li>
                    <li><a href="#">Saddar</a></li>
                </ul>
            </div>
            <div id="search-capacityL">All Capacities</div>
            <div id="drop-search-capactiyL">
                <div class="searchbar">
                    <asp:TextBox CssClass="searchtext" runat="server" ID="SearchCapacity"></asp:TextBox>
                </div>
                <ul class="allarea">
                    <li>All Capacities</li>
                </ul>
            </div>
            <div id="search-buttonL">
                <asp:Button runat="server" Text="Search" Style="height: 50px; line-height: 30px; border-radius: 0px;" CssClass="button" OnClick="Unnamed2_Click1" />
            </div>
        </div>
        <div id="datagrid">

            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <table id="Repeater">
                        <tr>
                            <td>
                                <div id="img">
                                    <asp:Image ID="Imag" ImageUrl='<%# Eval("Uimg") %>' runat="server" CssClass="Rimg" />
                                </div>
                            </td>
                            <td>
                                <table id="detail1">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Name" Text='<%# Eval("LawnName") %>' runat="server" Font-Size="35px" />
                                            <asp:Label ID="IDLAWN" runat="server" Visible="false" Text='<%# Eval("Address") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" Text='<%# Eval("SeatingCapacity") %>' runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label122" Text='<%# Eval("Address") %>' runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                    </tr>
                                </table>
                                <table id="tb_btn">
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" Text="Lawn Rent" Font-Size="25px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="btn_avlble">
                                            <asp:Button runat="server" class="btn btn-primary btn-block" Text="Check Availbility" OnClick="SSLAwn_Click"></asp:Button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </div>
</asp:Content>

