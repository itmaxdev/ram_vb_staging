<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/RamAdmin.Master" CodeBehind="newsdata.aspx.vb" Inherits="Ram.cd.newsdata" %>
<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadBeforeCSS" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadAfterCSS" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">
    <h5>NEW's</h5>
    <br />
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" ViewStateMode="Disabled" EnableRowsCache="false" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" KeyFieldName="NewsID" Theme="Office2010Black">
        <Settings ShowFilterRow="True" />
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ShowNewButtonInHeader="True" ShowDeleteButton="True"></dx:GridViewCommandColumn>
            <dx:GridViewDataDateColumn FieldName="DateAdded" PropertiesDateEdit-EditFormatString="dd-MMM-yyyy" PropertiesDateEdit-DisplayFormatString="dd-MMM-yyyy" VisibleIndex="2"></dx:GridViewDataDateColumn>

            <dx:GridViewDataTextColumn FieldName="MediaName" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TextTitle" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Article" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Type" FieldName="NewsType" VisibleIndex="3">
                <PropertiesComboBox>
                    <Items>
                        <dx:ListEditItem Value="Default" Text="Default" />
                        <dx:ListEditItem Value="Video" Text="Video" />
                        <dx:ListEditItem Value="Note" Text="Note" />
                        <dx:ListEditItem Value="Audio" Text="Audio" />
                        <dx:ListEditItem Value="Event" Text="Event" />
                    </Items>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="Link" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="HomePage" VisibleIndex="9">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="ShowOnTop" VisibleIndex="9">
            </dx:GridViewDataCheckColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Ram.cd.DbRamDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="NewItems" StoreOriginalValuesInViewState="False">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="ldsLanguages" runat="server" ContextTypeName="Ram.cd.DbRamDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Languages">
    </asp:LinqDataSource>
</asp:Content>
