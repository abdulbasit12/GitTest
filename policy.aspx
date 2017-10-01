<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="policy.aspx.cs" Inherits="policy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .backdiv{width:50%; margin-left:-337.25px;}
        .backdiv #form table, .backdiv #form table tbody, .backdiv #form table tbody tr{display:block;}
        .backdiv #form table tbody tr td{display:inline-block; width:48%; float:left;}
        .backdiv #form table tbody tr td:first-child{margin-right:25px;}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="catering-reg" id="Catering" runat="server">
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
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                                <asp:TextBox required="required"
                                    runat="server" class="form-control" placeholder="Area"
                                    ID="txtArea"></asp:TextBox>
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
                        </td>
                    </tr>
                </table>
                <asp:Button class="btn btn-primary btn-block"
                    runat="server" Text="Next" />
                <%--<asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>--%>
            </div>
        </div>
    </div>
</asp:Content>

