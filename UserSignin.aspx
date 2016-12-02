<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="UserSignin.aspx.cs" Inherits="UserSignin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="signindiv">
            <h1 class="heading">User Sign In To Manage Your Event</h1>
            <div id="signinform">
                <table>
                    <tr>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox" runat="server" placeholder="Enter Your Name" ID="txtSignInName"></asp:TextBox></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>
                            <asp:TextBox required="required" CssClass="textbox" runat="server" TextMode="Password" placeholder="Password" ID="txtpasswordSignIn"></asp:TextBox></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button class="button" Style="width: 80%" runat="server" Text="SIGN IN" OnClick="Unnamed3_Click" Width="75px" />
                        </td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
</asp:Content>

