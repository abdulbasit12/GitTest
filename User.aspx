<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="userdiv">
            <h1 class="heading">REGISTER NOW AND JOIN WITH US</h1>
            <div id="userform">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="User_Error" runat="server" Text="Provided Email  already Exist" ForeColor="Red" Visible="False" Font-Size="Small"></asp:Label>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox CssClass="textbox" required="required" runat="server" placeholder="Full Name" ID="txtName"></asp:TextBox></td>
                        <td>
                            <asp:TextBox CssClass="textbox" required="required" runat="server" TextMode="phone" placeholder="Phone Number" ID="txtPhoneNumber"></asp:TextBox></td>
                        <td>
                            <asp:TextBox CssClass="textbox" required="required" runat="server" placeholder="Email" ID="txtEmail" TextMode="Email"></asp:TextBox></td>
                        <td>
                            <asp:TextBox CssClass="textbox" required="required" runat="server" TextMode="Password" placeholder="Password" ID="txtPassword"></asp:TextBox></td>
                        <td>
                            <asp:TextBox CssClass="textbox" required="required" runat="server" TextMode="Password" placeholder="Confirm Password" ID="txtConfirmPassword"></asp:TextBox></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Button class="button" runat="server" Text="REGISTER" OnClick="Unnamed6_Click" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

