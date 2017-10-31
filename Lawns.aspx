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
            background-color: rgba(0, 188, 212, 0.95);
            border: none;
            top: 0;
            box-shadow: 0px 0px 1px 0px #ccc;
        }

        .Rimg {
            position: relative;
            height: 100%;
            width: 100%;
        }

        #detail1 {
            width: 50%;
            margin: 25px auto auto 215px;
            color: #000;
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
            margin-top: 22px;
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
            margin-top: 30px;
            color: #000;
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

        #detail1 tr td span {
            font-size: 17px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div class="search">
            <div class="search-filters">
                <div class="left-right">
                    <div class="search-bar">
                        <asp:TextBox runat="server" ID="SearchAreaText" class="filter-field" placeholder="Search Lawn"></asp:TextBox>
                    </div>
                    <div class="filter-right">
                        <div class="filter">
                            <asp:DropDownList ID="DropDownList1" runat="server" Class="dropdown-select"></asp:DropDownList>
                        </div>
                        <div class="filter">
                            <asp:DropDownList ID="DropDownList2" runat="server" Class="dropdown-select"></asp:DropDownList>
                        </div>
                        <div class="filter">
                            <asp:TextBox runat="server" ID="Min_Capacity" class="filter-capacity" placeholder="Min-Capacity" TextMode="Number" min="1"></asp:TextBox>
                        </div>
                        <div class="filter">
                            <asp:TextBox runat="server" ID="Capacity" class="filter-capacity" placeholder="Max-Capacity" TextMode="Number" min="1"></asp:TextBox>
                        </div>
                        <div class="search-button">
                            <span class="search-icon"></span>
                            <asp:Button runat="server" CssClass="button-Search" Text="Search" OnClick="Unnamed2_Click1" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="datagrid">
         <asp:Label ID="NoData" runat="server" Text="No Data To Show" Visible="false" ForeColor="Red" Font-Bold="true"></asp:Label>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
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
                                        <asp:Label runat="server" Text='<%# Eval("Rent") %>' Font-Size="18px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td id="btn_avlble">
                                        <asp:Button runat="server" CssClass="btn_avlble" Text="Explore Place" OnClick="SSLAwn_Click"></asp:Button>
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
