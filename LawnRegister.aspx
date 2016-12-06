<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="LawnRegister.aspx.cs" Inherits="LawnRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="lawndiv">
            <h1 class="heading">GET YOUR LAWN/BANQUET REGISTER NOW</h1>
            <div id="lawnform">
                <table>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="Address_Error" runat="server" ForeColor="Red" Text="Address Already Exist" Visible="False" Font-Size="Small"></asp:Label>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox"
                                runat="server" placeholder="Lawn/Banquet Full Name"
                                ID="txtLawnName"></asp:TextBox></td>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox"
                                runat="server" placeholder="Seating Capacity"
                                ID="txtSeating" TextMode="Number"></asp:TextBox></td>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox"
                                runat="server" placeholder="Address"
                                ID="txtAddress"></asp:TextBox></td>
                        <td class="auto-style1">
                            <asp:TextBox required="required" CssClass="textbox"
                                runat="server" placeholder="Bank Account#"
                                ID="txtAcc"></asp:TextBox></td>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox"
                                runat="server" TextMode="Phone" placeholder="Phone Number"
                                ID="txtphone"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox required="required" CssClass="textbox"
                                runat="server" placeholder="Lawn Rent" TextMode="Number"
                                ID="TextRent"></asp:TextBox></td>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox"
                                runat="server" placeholder="Email"
                                ID="txtEmailL"></asp:TextBox></td>
                        <td>
                            <asp:TextBox  required="required" CssClass="textbox"
                                runat="server" TextMode="Password" placeholder="Password"
                                ID="txtPass"></asp:TextBox></td>
                        <td class="auto-style1">
                            <asp:TextBox required="required" CssClass="textbox"
                                runat="server" TextMode="Password" placeholder="Confirm Password"
                                ID="txtConfirmPass"></asp:TextBox>
                        </td>
                        <td><asp:TextBox required="required" CssClass="textbox"
                                runat="server" placeholder="Area"
                                ID="txtArea"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button class="button"
                                runat="server" Text="Next" OnClick="Unnamed1_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

