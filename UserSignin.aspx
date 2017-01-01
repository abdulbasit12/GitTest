<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="UserSignin.aspx.cs" Inherits="UserSignin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="signindiv">
            <h1 class="heading">User Sign In To Manage Your Event</h1>
            <div id="signinform">
                <table>
                    <tr>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox" runat="server" placeholder="Enter Your Name" ID="txtSignInName"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSignInName" EnableClientScript="False" ErrorMessage="Please Valid User Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox" runat="server" TextMode="Password" placeholder="Password" ID="txtpasswordSignIn"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button class="button" Style="width: 80%" runat="server" Text="SIGN IN" OnClick="Unnamed3_Click" Width="75px" />
                        </td>
                    </tr>
                    <tr>
                        <td><a href="LawnRegister.aspx" style="font-family: Arial">Click Here To Register Your Lawnlick Here To Register Your Lawn</a></td>
                    </tr>
                    <tr>
                        <td><a href="User.aspx" style="font-family: Arial">Click Here To Manage Your Event</a></td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
</asp:Content>

