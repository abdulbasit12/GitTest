<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="LawnRegister.aspx.cs" Inherits="LawnRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <div id="lawndiv">
            <h1 class="heading">GET YOUR LAWN/BANQUET REGISTER NOW</h1>
            <div id="lawnform">
                <table>




                    <asp:Label ID="Address_Error" runat="server" ForeColor="Red" Text="Address Already Exist" Visible="False" Font-Size="Small"></asp:Label>






                    <asp:TextBox required="required"
                        runat="server" placeholder="Lawn/Banquet Full Name"
                        ID="txtLawnName"></asp:TextBox>

                    <asp:TextBox required="required"
                        runat="server" placeholder="Seating Capacity"
                        ID="txtSeating" TextMode="Number"></asp:TextBox>

                    <asp:TextBox required="required"
                        runat="server" placeholder="Address"
                        ID="txtAddress"></asp:TextBox>

                    <asp:TextBox required="required"
                        runat="server" placeholder="Bank Account#"
                        ID="txtAcc"></asp:TextBox>

                    <asp:TextBox required="required"
                        runat="server" TextMode="Phone" placeholder="Phone Number"
                        ID="txtphone"></asp:TextBox>






                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" EnableClientScript="False" ErrorMessage="Password Not Matched" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>



                    <asp:TextBox required="required"
                        runat="server" placeholder="Lawn Rent"
                        ID="txtRent"></asp:TextBox>

                    <asp:TextBox required="required"
                        runat="server" placeholder="Email"
                        ID="txtEmailL"></asp:TextBox>

                    <asp:TextBox required="required"
                        runat="server" TextMode="Password" placeholder="Password"
                        ID="txtPass"></asp:TextBox>

                    <asp:TextBox required="required"
                        runat="server" TextMode="Password" placeholder="Confirm Password"
                        ID="txtConfirmPass"></asp:TextBox>

                    <asp:TextBox required="required"
                        runat="server" placeholder="Area"
                        ID="txtArea"></asp:TextBox>
                    <asp:Button class="button"
                        runat="server" Text="Next" OnClick="Unnamed1_Click" />
                </table>
            </div>
        </div>
    </div>
</asp:Content>

