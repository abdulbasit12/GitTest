<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #form {
            position: relative;
            width: 50%;
            margin:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="userdiv">
        <h1 class="heading">REGISTER NOW AND JOIN WITH US</h1>
        <hr />
        <br />
        <div id="form">
            <asp:Label ID="User_Error" runat="server" Text="Provided Email  already Exist" ForeColor="Red" Visible="False" Font-Size="Small"></asp:Label>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <asp:TextBox required="required" type="text" class="form-control" runat="server" placeholder="Full Name" ID="txtName"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                <asp:TextBox required="required" class="form-control" runat="server" TextMode="phone" placeholder="Phone Number" ID="txtPhoneNumber"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                <asp:TextBox required="required" class="form-control" runat="server" placeholder="Email" ID="txtEmail" TextMode="Email"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <asp:TextBox required="required" class="form-control" runat="server" TextMode="Password" placeholder="Password" ID="txtPassword"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <asp:TextBox required="required" class="form-control" runat="server" TextMode="Password" placeholder="Confirm Password" ID="txtConfirmPassword"></asp:TextBox>
            </div>
            <br />
            <asp:Button class="btn btn-primary btn-block" runat="server" Text="REGISTER" OnClick="Unnamed6_Click" />
        </div>
    </div>
</asp:Content>

