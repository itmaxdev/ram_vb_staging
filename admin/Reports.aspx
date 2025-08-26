<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/RamAdmin.Master" CodeBehind="Reports.aspx.vb" Inherits="Ram.cd.Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadBeforeCSS" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">

    <telerik:RadFileExplorer ID="RadFileExplorer1" runat="server" InitialPath="~/admin/Logs" Height="600" Width="100%">
        <Configuration ViewPaths="/admin/Logs" SearchPatterns="*.txt, *.xlsx, *.docx, *.rtf, *.zip"/>
    </telerik:RadFileExplorer>
    <telerik:RadAjaxManager ID="theAjaxManager" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="AddDateColumn">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadFileExplorer1" LoadingPanelID="theLoadingPanel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="AddOwnerColumn">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadFileExplorer1" LoadingPanelID="theLoadingPanel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="theLoadingPanel" runat="server"></telerik:RadAjaxLoadingPanel>
    <ConfiguratorPanel ID="Configuratorpanel1" runat="server">
        <Views>
            <View>
                <ConfiguratorColumn ID="ConfiguratorColumn1" runat="server" Title="Custom columns" Size="Wide">
                    <ul class="fb-group">
                        <li><span class="checkbox">
                            <asp:CheckBox ID="AddDateColumn" runat="server" Text="Add <em>Creation Date</em> column"
                                AutoPostBack="true" Checked="true" ></asp:CheckBox></span></li>
                        <%--<li><span class="checkbox">
                            <asp:CheckBox ID="AddOwnerColumn" runat="server" Text="Add <em>Owner Name</em> column"
                                AutoPostBack="true" Checked="true"></asp:CheckBox></span></li>--%>
                    </ul>
                </ConfiguratorColumn>
            </View>
        </Views>
    </ConfiguratorPanel>
</asp:Content>

