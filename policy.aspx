<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="policy.aspx.cs" Inherits="policy" %>

<%@ Register Assembly="DropDownCheckBoxes" Namespace="Saplin.Controls" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .backdiv {
            width: 50%;
            margin-left: -337.25px;
        }

            .backdiv #form table, .backdiv #form table tbody, .backdiv #form table tbody tr, .backdiv #form table tbody tr td {
                display: block;
                width: 100%;
            }

                .backdiv #form table tbody tr td label {
                    display: inline-block;
                    width: 50%;
                    color: #fff;
                    float: left;
                }

                .backdiv #form table tbody tr td select {
                    display: inline-block;
                    width: 50%;
                }

                .backdiv #form table tbody tr td input {
                    display: inline-block;
                    width: 50%;
                }

                .backdiv #form table tbody tr td {
                    margin-bottom: 10px;
                }
                .search{position:relative;margin-top:38px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="catering-reg" id="Catering" runat="server">
        <div class="backdiv" id="backdiv">
            <h1 class="heading">Make Your Own Policy</h1>
            <hr />
            <div id="form" class="policy">
                <table>
                    <tr>
                        <td>
                            <label>Package Name</label>
                            <asp:TextBox runat="server" ReadOnly="true" text="Package1" />
                        </td>
                        <td>
                            <label>Dishes Name</label>
                            <asp:DropDownCheckBoxes ID="DropDownCheckBoxes1" runat="server" Width="180px" UseSelectAllNode="false" Font-Bold="true" BackColor="Black" Visible="true">
                            </asp:DropDownCheckBoxes>
                            <asp:ExtendedRequiredFieldValidator EnableClientScript="false" ID="ExtendedRequiredFieldValidator2" runat="server" ControlToValidate="DropDownCheckBoxes1" ErrorMessage="Required" ForeColor="Red"></asp:ExtendedRequiredFieldValidator>
                        </td>
                         <td>
                            <label>Package Price</label>
                            <asp:TextBox runat="server" placeholder="Amount" ID="packageprice" TextMode="Number" />
                        </td>
                        <td>
                            <label>Package offer on Persons</label>
                            <asp:TextBox runat="server" placeholder="No of Persons" type="number" ID="Persons" />
                        </td>
                        <td>
                            <label>Discount Percentage</label>
                            <asp:TextBox runat="server" placeholder="Discount Percent" type="number" ID="Discount"></asp:TextBox>
                        </td>
                        <td>
                            <label>Discount Applicable</label>
                            <asp:TextBox runat="server" placeholder="Discount Applicable for Persons" type="number" ID="DiscountPerson" />
                        </td>
                        <td>
                            <label>Event Type</label>
                            <asp:DropDownList runat="server" ID="EventType">
                                <asp:ListItem Text="Baraat" />
                                <asp:ListItem Text="valima" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <div class="buttons">
                    <asp:Button class="btn btn-primary btn-block" runat="server" Text="Add More Policies" OnClick="More_Click" />
                    <asp:Button class="btn btn-primary btn-block" runat="server" Text="Next" OnClick="Next_Click" />
                    <asp:Button class="btn btn-primary btn-block" runat="server" Text="Skip" OnClick="Skip_Click" />
                    <div class="clear"></div>
                </div>
                <%--<asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>--%>
            </div>
        </div>
    </div>
</asp:Content>
