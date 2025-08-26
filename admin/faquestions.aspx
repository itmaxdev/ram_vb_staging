<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/RamAdmin.Master" CodeBehind="faquestions.aspx.vb" Inherits="Ram.cd.faquestions" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadBeforeCSS" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadAfterCSS" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">
    <h5>FAQ's</h5>
    <br />
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" KeyFieldName="FAQID" Theme="Office2010Black">
        <Settings ShowFilterRow="True" />
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataComboBoxColumn Caption="Language" FieldName="fkLanguageID" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="ldsLanguages" TextField="Language" ValueField="LanguageID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Category" FieldName="fkCategoryID" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="ldsCategory" TextField="CategoryName" ValueField="CategoryID">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="Question" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Answer" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="HomePage" VisibleIndex="5">
            </dx:GridViewDataCheckColumn>
        </Columns>
    </dx:ASPxGridView>
    <hr />
    <h2>Categories</h2>
    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ldsCategory" KeyFieldName="CategoryID" Theme="Office2010Black">
        <Settings ShowFilterRow="True" />
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="false" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>

    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Ram.cd.DbRamDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="FAQs" StoreOriginalValuesInViewState="False">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="ldsLanguages" runat="server" ContextTypeName="Ram.cd.DbRamDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Languages">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="ldsCategory" runat="server" ContextTypeName="Ram.cd.DbRamDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Categories">
    </asp:LinqDataSource>
</asp:Content>
