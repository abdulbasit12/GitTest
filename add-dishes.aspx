<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-dishes.aspx.cs" Inherits="add_dishes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #form {
            position: relative;
            width: 90%;
            margin: auto;
        }

        #backdiv {
            width: 60%;
        }

        .left {
            margin-right: 25px;
        }

        #form table {
            width: 40%;
            display: inline-block !important;
        }

            #form table.price-persons {
                width: 27.5%;
                margin-left: 10px;
                float: right;
            }

            #form table tbody, #form table tbody tr, #form table tbody tr td {
                display: block;
            }

        .backdiv {
            margin-left: -410px;
            margin-top: -190px;
        }

        .add {
            display: inline-block;
            width: 48% !important;
            float: left;
        }

        .submit {
            display: inline-block;
            width: 48% !important;
            float: right;
            margin-top: 0 !important;
        }
        .error{margin-top:45px;display:block;width:100%;text-align:center;padding:10px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label Text="NoDatatoShow" runat="server" visible="false"   ID="lbl_error"   forecolor="Red" class="error"/>
    <div class="catering-reg" id="Catering" runat="server">
        <div class="backdiv" id="backdiv">
            <h1 class="heading">Add Your Kitchen Menu</h1>
            <hr />
            <div class="grid-dishes">
                <asp:GridView ID="Dishes" runat="server" AutoGenerateColumns="false" AllowPaging="false">
                    <Columns>
                        <asp:TemplateField HeaderText="Dish Name" HeaderStyle-ForeColor="Yellow" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"
                            HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                            <ItemTemplate>
                                <asp:TextBox ID="DishName" runat="server" Width="150px" placeholder="Dish Name"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PricePerPerson" HeaderStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="RoyalBlue">
                            <ItemTemplate>
                                <asp:TextBox ID="dishPrice" runat="server" TextMode="Number" Width="150px" placeholder="Dish Price"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="MiniumPerson" HeaderStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="Orange">
                            <ItemTemplate>
                                <asp:TextBox ID="MinPerson" runat="server" TextMode="Number" Width="150px" placeholder="Minimum Person"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
                <asp:Button class="btn btn-primary btn-block add" runat="server" Text="Add More Dishes" OnClick="Unnamed_Click1" />
                <asp:Button class="btn btn-primary btn-block submit" runat="server" Text="Add Dishes To Menu" OnClick="Unnamed_Click" />
                <%--<asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>--%>
            </div>
        </div>
    </div>
</asp:Content>

