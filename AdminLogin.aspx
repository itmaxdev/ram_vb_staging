<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/RamAdmin.Master" CodeBehind="AdminLogin.aspx.vb" Inherits="Ram.cd.AdminLogin" %>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadBeforeCSS" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadAfterCSS" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <telerik:RadAjaxManager runat="server"></telerik:RadAjaxManager>

    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
        <div id="banner">
            <h5>

                <img src="img/logo.png" />
                <br />
                RAM Login
            </h5>
        </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <div class="registrationform">
            <div class="form-horizontal">
                <fieldset>
                    <legend>Login <i class="fa fa-pencil pull-right"></i></legend>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="col-lg-2 control-label"></asp:Label>
                        <div class="col-lg-10">
                            <asp:TextBox TextMode="Email" ID="txtUsername" runat="server" placeholder="Username" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="col-lg-2 control-label"></asp:Label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="form-control"
                                TextMode="Password"  pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^\da-zA-Z])(.{8,25})$" maxlength="25" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" CssClass="btn btn-primary" Text="Submit" />
                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" />
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <telerik:RadNotification ID="RadNotification1" runat="server"></telerik:RadNotification>
</asp:Content>
