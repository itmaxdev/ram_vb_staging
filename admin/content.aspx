<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/RamAdmin.Master" CodeBehind="content.aspx.vb" Inherits="Ram.cd.content" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadBeforeCSS" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadAfterCSS" runat="server">
    <style>
        body
        {
            color: black;
        }
    </style>
    <script type="text/javascript">
    function OnClientLoad(editor, args) {
        setTimeout(function()
        {
            editor.set_mode(2);
        }, 100);
    }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">
    <h5 runat="server" id="mainlabel">Loading Content</h5>
    <br />
    <table>
        <tr>
            <td>
                <asp:DropDownList runat="server" ID="cboContents" DataValueField="ContentID" DataMember="PContent" DataTextField="ContentTitle" Font-Size="Large" Width="500" DropDownHeight="400" ></asp:DropDownList>
            </td>
            <td>
                <asp:Button runat="server" ID="btnLoad" Text="Load" ForeColor="Black" OnClick="btnLoad_Click" class="btn btn-default" />
            </td>
        </tr>
    </table>


    
    <telerik:RadEditor ID="RadEditor1" runat="server" EditModes="All" OnClientLoad="OnClientLoad"></telerik:RadEditor>
    <asp:Button runat="server" ID="btnSave" Text="Save" OnClick="btnSave_Click" ForeColor="Black" class="btn btn-default" />

</asp:Content>
