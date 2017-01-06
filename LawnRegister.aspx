<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="LawnRegister.aspx.cs" Inherits="LawnRegister" %>

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
    <div id="main">
        <div class="backdiv">
            <h1 class="heading">GET YOUR LAWN/BANQUET REGISTER NOW</h1>
            <hr />
            <div id="form">
                <asp:Label ID="Address_Error" runat="server" ForeColor="Red" Text="Address Already Exist" Visible="False" Font-Size="Small"></asp:Label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <asp:TextBox required="required"
                        runat="server" class="form-control" placeholder="Lawn/Banquet Full Name"
                        ID="txtLawnName"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                    <asp:TextBox required="required"
                        runat="server" class="form-control" placeholder="Seating Capacity"
                        ID="txtSeating" TextMode="Number"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                    <asp:TextBox required="required"
                        runat="server" class="form-control" placeholder="Address"
                        ID="txtAddress"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
                    <asp:TextBox required="required"
                        runat="server" class="form-control" placeholder="Bank Account#"
                        ID="txtAcc"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                    <asp:TextBox required="required" runat="server" class="form-control" TextMode="Phone" placeholder="Phone Number"
                        ID="txtphone"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <asp:TextBox required="required" runat="server" class="form-control" placeholder="Lawn Rent"
                        ID="txtRent"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                    <asp:TextBox required="required" runat="server" class="form-control" placeholder="Email"
                        ID="txtEmailL"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <asp:TextBox required="required" runat="server" class="form-control" TextMode="Password" placeholder="Password"
                        ID="txtPass"></asp:TextBox>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <asp:TextBox required="required" runat="server" class="form-control" TextMode="Password" placeholder="Confirm Password"
                        ID="txtConfirmPass"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>
                </div>
                <br />
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                    <asp:TextBox required="required"
                        runat="server" class="form-control" placeholder="Area"
                        ID="txtArea"></asp:TextBox>
                </div>
                <br />
                <asp:Button class="btn btn-primary btn-block"
                    runat="server" Text="Next" OnClick="Unnamed1_Click" />
            </div>
        </div>
    </div>
</asp:Content>

