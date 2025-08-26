<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/RamAdmin.Master" CodeBehind="users.aspx.vb" Inherits="Ram.cd.users" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadBeforeCSS" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadAfterCSS" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">
    <script type="text/javascript">
        function OpenRoles(vv) {
            var strFeatures = "toolbar=no,status=no,menubar=no,location=no";
            strFeatures = strFeatures + ",scrollbars=yes,resizable=yes,height=300,width=400";

            window.open('UserRoles.aspx?iss=' + vv, '', strFeatures, true);

        }
        function NewUser() {
            window.open('NewUser.aspx', 'MediaName', 'width=300,height=540,left=250,top=250,scrollbars=yes')
        }
    </script>

    <h5>Users</h5>
    <br />
    <div style="width: 100%; text-align: right;">
        <dx:ASPxButton runat="server" ID="btnRefreshUsers" Text="Refresh Users" OnClick="btnRefreshUsers_Click"></dx:ASPxButton>
        After change, please refresh
    </div>
    <dx:ASPxGridView ID="ASPxGridView6" OnRowDeleting="ASPxGridView6_RowDeleting" runat="server" AutoGenerateColumns="False" EnableTheming="True" KeyFieldName="UserName" Theme="Office2010Black">
        <SettingsPager Visible="true" PageSize="100">
        </SettingsPager>
        <SettingsEditing EditFormColumnCount="1" Mode="PopupEditForm">
        </SettingsEditing>
        <SettingsBehavior ConfirmDelete="True" />
        <SettingsPopup CustomizationWindow-HorizontalAlign="WindowCenter" CustomizationWindow-VerticalAlign="WindowCenter">
            <EditForm Modal="True" ShowHeader="False" HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" />

            <CustomizationWindow HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter"></CustomizationWindow>
        </SettingsPopup>
        <SettingsSearchPanel Visible="false" />
        <SettingsText CommandUpdate="Submit" CommandDelete="Disable" />
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="false" VisibleIndex="0" ShowNewButtonInHeader="true">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="UserName" VisibleIndex="3" Caption="Email Address">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn VisibleIndex="4" Caption="Status" EditFormSettings-Visible="False">
                <DataItemTemplate>
                    <%# CheckUser(Eval("UserName")) %>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn VisibleIndex="6" Caption="Roles" EditFormSettings-Visible="False">
                <DataItemTemplate>
                    <a href="javascript:OpenRoles('<%#Eval("UserName") %>');"><%# ArrayToString(Eval("UserName")) %></a>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn VisibleIndex="6" Caption="Password">
                <EditFormSettings Visible="False"></EditFormSettings>
                <DataItemTemplate>
                    <asp:Button runat="server" ID="btnSendPassword" Text="Send" CssClass="btn btn-success uppercase" OnClick="btnSendPassword_Click" CommandName='<%# Eval("UserName")%>' />
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
        </Columns>
        <Styles AdaptiveDetailButtonWidth="22"></Styles>
    </dx:ASPxGridView>

    <telerik:RadNotification ID="RadNotification1" runat="server" Animation="Slide" Position="Center" Title="User Error" EnableRoundedCorners="True" EnableShadow="True"></telerik:RadNotification>

</asp:Content>
