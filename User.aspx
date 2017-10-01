<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .form {
            position: relative;
            width: 50%;
            margin: auto;
        }

        .left {
            margin-right: 25px;
        }

        .backdiv #form .type-lawn select {
            width: 100%;
            border-radius: 3px;
            height: 35px;
        }

        .backdiv #form input.btn {
            margin-top: 20px;
        }
        .user-reg{width:50%; margin-left:-337.25px; margin-bottom:50px;}
        .user-reg .form{width:80%;}
        .lawn-reg > .backdiv{width:80%; margin-left:-546px;}
        .lawn-reg > .backdiv .form{width:80%;}
        .lawn-reg > .backdiv .form table, .lawn-reg > .backdiv .form table tbody, .lawn-reg > .backdiv .form table tbody tr{width:100%; display:block;}
        .lawn-reg > .backdiv .form table tbody tr td{width:49%; display:inline-block;}
        .lawn-reg > .backdiv .form table tbody tr td:last-child{float:right;}
        .lawn-reg > .backdiv .type-lawn{text-align:center;}
        .lawn-reg > .backdiv .type-lawn select{width:40%; margin:0 auto 15px auto; height:30px; border-radius:5px; text-align:center}
        .lawn-reg > .backdiv .btn{width:50%; margin:0 auto;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="register-btn">
        <asp:Button runat="server" Text="Register Lawn" OnClick="Unnamed_Click" />
        <asp:Button runat="server" Text="Register Kitchen" OnClick="Unnamed_Click2" />
        <asp:Button runat="server" Text="Register User" OnClick="Unnamed_Click3" />
    </div>
    <div class="backdiv user-reg" id="usersdiv" runat="server">
        <h1 class="heading">REGISTER NOW AND JOIN WITH US</h1>
        <hr />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="CheckOnClick" runat="server" ControlToValidate="txtPassword" EnableClientScript="False" ErrorMessage="Please Enter Valid Password" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="CheckOnClick" runat="server" ControlToValidate="txtName" EnableClientScript="False" ErrorMessage="Please Fill Out this Field" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="CheckOnClick" runat="server" ControlToValidate="txtPhoneNumber" EnableClientScript="False" ErrorMessage="Please Fill Out this Field" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="CheckOnClick" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="Please Fill Out this Field" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="CheckOnClick" runat="server" ControlToValidate="CNIC" EnableClientScript="False" ErrorMessage="Please Fill Out this Field" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="CheckOnClick" runat="server" ControlToValidate="txtConfirmPassword" EnableClientScript="False" ErrorMessage="Please Fill Out this Field" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="CheckOnClick" runat="server" EnableClientScript="False" ErrorMessage="Password Length Must Be between 7 to 10 characters" ControlToValidate="txtPassword" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$"></asp:RegularExpressionValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" EnableClientScript="False" ControlToValidate="txtEmail" ValidationGroup="CheckOnClick"></asp:CustomValidator>
        <div class="form">
            <asp:Label ID="User_Error" runat="server" Text="Provided Email  already Exist" ForeColor="Red" Visible="False" Font-Size="Small"></asp:Label>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ValidationGroup="CheckOnClick" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <asp:TextBox ValidationGroup="CheckOnClick" CausesValidation="false" type="text" class="form-control" runat="server" placeholder="Full Name" ID="txtName"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                <asp:TextBox ValidationGroup="CheckOnClick" CausesValidation="false" class="form-control" runat="server" TextMode="phone" placeholder="Phone Number" ID="txtPhoneNumber"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                <asp:TextBox ValidationGroup="CheckOnClick" CausesValidation="false" class="form-control" runat="server" placeholder="Email" ID="txtEmail" TextMode="Email"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                <asp:TextBox ValidationGroup="CheckOnClick" class="form-control" runat="server" placeholder="CNIC" ID="CNIC" TextMode="Number"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <asp:TextBox ValidationGroup="CheckOnClick" class="form-control" runat="server" TextMode="Password" placeholder="Password" ID="txtPassword"></asp:TextBox>
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <asp:TextBox ValidationGroup="CheckOnClick" class="form-control" runat="server" TextMode="Password" placeholder="Confirm Password" ID="txtConfirmPassword"></asp:TextBox>
            </div>
            <br />
            <asp:Button class="btn btn-primary btn-block" runat="server" Text="REGISTER" OnClick="Unnamed6_Click" ValidationGroup="CheckOnClick" />
        </div>
    </div>
    <div id="main" class="lawn-reg" runat="server" visible="false">
        <div class="backdiv">
            <h1 class="heading">GET YOUR LAWN/BANQUET REGISTER NOW</h1>
            <hr />
            <div class="form">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Address_Error" runat="server" ForeColor="Red" Text="Address Already Exist" Visible="False" Font-Size="Small"></asp:Label>
                            <div class="input-group left">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox required="required"
                                    runat="server" class="form-control" placeholder="Lawn/Banquet Full Name"
                                    ID="txtLawnName"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group left">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                                <asp:TextBox required="required"
                                    runat="server" class="form-control" placeholder="Seating Capacity"
                                    ID="txtSeating" TextMode="Number"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group left">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                                <asp:TextBox required="required"
                                    runat="server" class="form-control" placeholder="Address"
                                    ID="txtAddress"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group left">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
                                <asp:TextBox required="required"
                                    runat="server" class="form-control" placeholder="Bank Account#"
                                    ID="txtAcc"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group left">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                                <asp:TextBox required="required" runat="server" class="form-control" TextMode="Phone" placeholder="Phone Number"
                                    ID="txtphone"></asp:TextBox>
                            </div>
                            <br />
                        </td>
                        <td>
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
                            </div>
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                                <asp:TextBox required="required" runat="server" class="form-control" placeholder="Area"></asp:TextBox>
                            </div>
                            <br />
                        </td>
                    </tr>
                </table>
                <div class="type-lawn">
                    <select runat="server">
                        <option hidden="hidden">Select your lawn Type</option>
                        <option>Lawn</option>
                        <option>Banquet</option>
                    </select>
                </div>
                <asp:Button class="btn btn-primary btn-block"
                    runat="server" Text="Next" OnClick="Unnamed_Click1" />
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>
            </div>
        </div>
    </div>
    <div class="catering-reg" id="Catering" runat="server" visible="false">
        <div class="backdiv" id="backdiv">
            <h1 class="heading">GET YOUR CATERING SERVICES REGISTER NOW</h1>
            <hr />
            <div id="form">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Address Already Exist" Visible="False" Font-Size="Small"></asp:Label>
                            <div class="input-group left">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox required="required"
                                    runat="server" class="form-control" placeholder="Kitchen Name"
                                    ID="TextBox1"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group left">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                                <asp:TextBox required="required"
                                    runat="server" class="form-control" placeholder="Address"
                                    ID="TextBox3"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group left">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                                <asp:TextBox required="required" runat="server" class="form-control" TextMode="Phone" placeholder="Phone Number"
                                    ID="TextBox5"></asp:TextBox>
                            </div>
                            <br />
                        </td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <asp:TextBox required="required" runat="server" class="form-control" placeholder="Email"
                                    ID="TextBox7"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox required="required" runat="server" class="form-control" TextMode="Password" placeholder="Password"
                                    ID="TextBox8"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox required="required" runat="server" class="form-control" TextMode="Password" placeholder="Confirm Password"
                                    ID="TextBox9"></asp:TextBox>
                            </div>
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                                <asp:TextBox required="required"
                                    runat="server" class="form-control" placeholder="Area"
                                    ID="txtArea"></asp:TextBox>
                            </div>
                            <br />
                        </td>
                    </tr>
                </table>
                <asp:Button class="btn btn-primary btn-block"
                    runat="server" Text="Next" />
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>
            </div>
        </div>
    </div>
</asp:Content>
