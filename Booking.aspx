<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #form {
            position: relative;
            width: 80%;
            margin: auto;
        }
        #form .input-group {
            margin-bottom:10px;        
        }
        #form .btn {
            margin-bottom:15px;        
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="backdiv">
        <h1 class="heading">Booking For</h1>
        <div id="bookingform">
            <div id="form">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <asp:TextBox runat="server" class="form-control" required="required" placeholder="Organizer Name" ID="txtOrgName" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <asp:TextBox runat="server" class="form-control" required="required" placeholder="UserName" ID="txtUser"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
                    <asp:TextBox runat="server" class="form-control" required="required" placeholder="CNIC" ID="txtCNIC"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-users"></i></span>
                    <asp:TextBox runat="server" class="form-control" required="required" placeholder="No. of Guests" ID="txtGuests"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    <asp:TextBox runat="server" class="form-control" required="required" TextMode="Date" ID="txtDate" AutoPostBack="True"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                    <asp:TextBox runat="server" class="form-control" required="required" placeholder="Contact #" TextMode="Phone" ID="txtContact"></asp:TextBox>
                </div>
                <br />
                <div>
                    <asp:Button runat="server" class="btn btn-primary btn-block" Text="Book" OnClick="Unnamed3_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

