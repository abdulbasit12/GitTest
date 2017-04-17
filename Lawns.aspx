﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lawns.aspx.cs" Inherits="Lawns" %>

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
            background-color: rgba(0, 188, 212, 0.49);
            border: none;
            top: 0;
            box-shadow: 5px 5px 2px rgba(120, 109, 109, 0.34);
        }

        .Rimg {
            position: relative;
            height: 100%;
            width: 100%;
        }

        #detail1 {
            width: 50%;
            margin:25px auto auto 215px;
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
            top: 0%;
            border: 1px solid lightgray;
            height: 110px;
            width: 140px;
            left: 5%;
            margin-top:22px;
        }

        #btn_avlble {
            position: relative;
            width: 50%;
        }

        #tb_btn {
            position: absolute;
            height: auto;
            float: right;
            width: 20%;
            right: 5%;
            top: 0%;
            margin-top:30px;
        }

        .btn_avlble {
            background-color: #fff;
            width: 100%;
            color: #000;
            font-size: 20px;
            height: 30px;
            border: none;
        }

        #info {
            vertical-align: top;
        }
        #detail1 tr td span{font-size:17px;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div class="search">
        <div class="search-filters">
            <div class="search-bar">
                <div class="filter-fill">
                    <asp:TextBox runat="server" ID="SearchAreaText0" class="filter-field" placeholder="Search Lawn"></asp:TextBox>
                </div>
            </div>
            <div class="filter-right">
            <div class="filter">
                <select id="SearchType0" class="dropdown-select" runat="server">
                    <option value="0">All Types</option>
                    <option value="1">Banquets</option>
                    <option value="2">Lawns</option>
                </select>
            </div>
            <div class="filter">
                <select id="SearchArea0" class="dropdown-select" runat="server">
                    <option value="0">All Areas</option>
                    <option value="1">Jamshed Road</option>
                    <option value="2">Korangi</option>
                    <option value="3">Gulistan-e-Johar</option>
                    <option value="4">Defence</option>
                    <option value="5">Gulshan-e-Iqbal</option>
                </select>
            </div>
            <div class="filter">
                <select id="SearchCapacity0" class="dropdown-select" runat="server">
                    <option value="0">All Capacities</option>
                    <option value="1">50-100</option>
                    <option value="2">100-200</option>
                    <option value="3">200-300</option>
                    <option value="4">300-400</option>
                    <option value="5">400-500</option>
                    <option value="5">500+</option>
                </select>
            </div>
                <div class="search-button">
                    <span class="search-icon"></span>
                    <asp:Button runat="server" CssClass="button-Search" Text="Search" />
                </div>
            </div>
        </div>
    </div>
        <!--<div class="Search">
            <div class="frame">
                <div class="filter">
                    <div class="fiterbar">
                        <div class="filter-right">
                            <div class="dropdown">
                                <div class="dropdown-span">
                                    <span class="dropdown-icon"></span>
                                    <div class="dropdown-label">All Types</div>
                                </div>
                                <select id="SearchType" class="dropdown-select" runat="server">
                                    <option value="0">All Types</option>
                                    <option value="1">Banquets</option>
                                    <option value="2">Lawns</option>
                                </select>
                            </div>
                            <div class="dropdown">
                                <div class="dropdown-span">
                                    <span class="dropdown-icon"></span>
                                    <div class="dropdown-label">All Areas</div>
                                </div>
                                <select id="SearchArea" class="dropdown-select" runat="server">
                                    <option value="0">All Areas</option>
                                    <option value="1">Jamshed Road</option>
                                    <option value="2">Korangi</option>
                                    <option value="3">Gulistan-e-Johar</option>
                                    <option value="4">Defence</option>
                                    <option value="5">Gulshan-e-Iqbal</option>
                                </select>
                            </div>
                            <div class="dropdown">
                                <div class="dropdown-span">
                                    <span class="dropdown-icon"></span>
                                    <div class="dropdown-label">All Capacities</div>
                                </div>
                                <select id="SearchCapacity" class="dropdown-select" runat="server">
                                    <option value="0">All Capacities</option>
                                    <option value="1">50-100</option>
                                    <option value="2">100-200</option>
                                    <option value="3">200-300</option>
                                    <option value="4">300-400</option>
                                    <option value="5">400-500</option>
                                    <option value="5">500+</option>
                                </select>
                            </div>
                            <div class="search-button">
                                <span class="search-icon"></span>
                                <asp:Button runat="server" CssClass="button-Search" Text="Search" OnClick="Unnamed2_Click1" />
                            </div>
                            <div class="cb"></div>
                        </div>
                        <div class="filter-fill">
                            <asp:TextBox runat="server" ID="SearchAreaText" class="filter-field" placeholder="Search Lawn"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
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
                        <td id="info">
                            <table id="detail1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Name" Text='<%# Eval("LawnName") %>' runat="server" Font-Size="35px" />
                                        <asp:Label ID="IDLAWN" runat="server" Visible="false" Text='<%# Eval("Address") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-users" style="font-size: 15px;"></i>
                                        <asp:Label ID="Label3" Text='<%# Eval("SeatingCapacity") %>' runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-location-arrow" style="font-size: 15px;"></i>
                                        <asp:Label ID="Label122" Text='<%# Eval("Address") %>' runat="server" />
                                    </td>
                                </tr>
                            </table>
                            <table id="tb_btn">
                                <tr>
                                    <td>
                                        <i class="fa fa-money" style="font-size: 15px;"></i>
                                        <asp:Label runat="server" Text="Lawn Rent" Font-Size="18px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td id="btn_avlble">
                                        <asp:Button runat="server" CssClass="btn_avlble" Text="Check Availbility" OnClick="SSLAwn_Click"></asp:Button>
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
    <div>
    </div>
    <div></div>
</asp:Content>

