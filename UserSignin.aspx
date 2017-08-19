<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="UserSignin.aspx.cs" Inherits="UserSignin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #form {
            position: relative;
            width: 50%;
            margin: auto;
        }

        #logo {
            position: relative;
            background-color: #663399;
            height: 150px;
            width: 40%;
            border-radius: 100%;
            left: 31%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="backdiv">
        <img src="logo.png" id="logo" />
        <hr />
        <br />
        <div id="form">
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <asp:TextBox required="required" type="text" class="form-control" runat="server" placeholder="Enter Email" ID="txtSignInName"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSignInName" EnableClientScript="False" ErrorMessage="Please Valid User Name"></asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <asp:TextBox required="required" class="form-control" runat="server" TextMode="Password" placeholder="Password" ID="txtpasswordSignIn"></asp:TextBox>
            </div>
            <br />
            <div class="input-group" id="Code" runat="server" visible="false">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <asp:TextBox required="required" class="form-control" runat="server" TextMode="Password" placeholder="Code" ID="CodePass"></asp:TextBox>
            </div>
            <div>
                <asp:Button class="btn btn-primary btn-block" runat="server" Text="SIGN IN" OnClick="Unnamed3_Click" />
            </div>
        </div>
        <p class="sign-up">Do not have an account?<a href="User.aspx"><b> Create One!</b></a></p>
    </div>
</asp:Content>

