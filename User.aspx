<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #form {
            position: relative;
            width: 50%;
            margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="register-btn">
        <asp:Button runat="server" Text="Register Lawn" />
        <asp:Button runat="server" Text="Register Kitchen" />
        <asp:Button runat="server" Text="Register User" />
    </div>
    <div class="backdiv">
        <h1 class="heading">REGISTER NOW AND JOIN WITH US</h1>
        <hr />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" EnableClientScript="False" ErrorMessage="Please Enter Valid Password" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" EnableClientScript="False" ErrorMessage="Password Length Must Be between 7 to 10 characters" ControlToValidate="txtPassword" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$"></asp:RegularExpressionValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" EnableClientScript="False" ControlToValidate="txtEmail"></asp:CustomValidator>
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
                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                <asp:TextBox required="required" class="form-control" runat="server" placeholder="CNIC" ID="CNIC" TextMode="Number"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                <asp:TextBox required="required" class="form-control" runat="server" placeholder="CNIC" ID="CNIC" TextMode="Number"  ></asp:TextBox>
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

