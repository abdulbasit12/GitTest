<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lawns.aspx.cs" Inherits="Lawns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .btn2 {
            position: relative;
            height: 35px;
            width: 50%;
            background-color: darkorange;
            border-radius: 0px;
            color: white;
            font-family: Arial;
            font-size: 15px;
            left: 0%;
            border:none;
        }

        #Repeater{
            position:relative;
            width:100%;
            height:100px;
            left:10%;
            background-color:white;
            border:2px solid gray;
            border-bottom-color:black;
        }

        .Rimg{
            position:relative;
            max-height:350px;
            width:50%;
        }
        #detail1{
            position:absolute;
            font-family:Arial;
            left:55%;
            width:50%;
            top:20%;
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
                                <asp:Image ID="Imag" ImageUrl='<%# Eval("Uimg") %>' runat="server" CssClass="Rimg"/>
                            </td>
                            <td>
                                <table id="detail1">
                                    <tr>
                                        <td style="font-family:Arial; font-size:35px; font-weight:400;">
                                            <asp:Label ID="Name" Text='<%# Eval("LawnName") %>' runat="server" />
                                            <asp:Label ID="IDLAWN" runat="server" Visible="false" Text='<%# Eval("Address") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-family:Arial; font-size:20px;">
                                            <asp:Label ID="Label3" Text='<%# Eval("SeatingCapacity") %>' runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-family:Arial; font-size:20px;">
                                            <asp:Label ID="Label122" Text='<%# Eval("Address") %>' runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="SSLAwn" runat="server" Text="Check Availbility" OnClick="SSLAwn_Click" CssClass="btn2"></asp:Button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>

<%--                <SeparatorTemplate>

                    <asp:Image ID="immm1" ImageUrl="uploadimages/AhsanBuffet_Setup_1.jpg" />>
                     <asp:Image ID="immm2" ImageUrl="uploadimages/AhsanBuffet_Setup_1.jpg" />
                    <asp:Image ID="immm3" ImageUrl="uploadimages/AhsanBuffet_Setup_1.jpg" />
                    <asp:Image ID="immm4" ImageUrl="uploadimages/AhsanBuffet_Setup_1.jpg" />
                    <asp:Image ID="immm5" ImageUrl="uploadimages/AhsanBuffet_Setup_1.jpg" />
                    <asp:Image ID="immm6" ImageUrl="uploadimages/AhsanBuffet_Setup_1.jpg" />
                </SeparatorTemplate>
--%>

            </asp:Repeater>
        </div>

    </div>
</asp:Content>

