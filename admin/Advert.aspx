<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/RamAdmin.Master" CodeBehind="Advert.aspx.vb" Inherits="Ram.cd.AdvertF" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadBeforeCSS" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">

    <asp:Label ID="lblName" runat="server" />
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="adsdas" KeyFieldName="ID" Theme="Office2010Black">
        <Settings ShowFilterRow="True" />
        <Columns>

            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="false" ShowNewButtonInHeader="false" VisibleIndex="0">
            </dx:GridViewCommandColumn>

            <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="2">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="Active" VisibleIndex="3">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="ViewCount" VisibleIndex="4">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="FileSource" VisibleIndex="5">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataColumn Caption="Edit" VisibleIndex="4" Width="5%">
                <DataItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" value="ID" navigateurlformatstring="javascript:ShowDetailPopup7('{0}')">Edit</asp:LinkButton>
                </DataItemTemplate>
            </dx:GridViewDataColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:LinqDataSource runat="server" ID="adsdas" ContextTypeName="Ram.cd.DbRamDataContext" EntityTypeName="" TableName="Adverts"></asp:LinqDataSource>

        <button><a href="Advertisment.aspx">Add New</a></button>
<%--    <div style="background-color: white">
        <asp:GridView ID="advertbl" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Active" HeaderText="Active" />
                <asp:BoundField DataField="ViewCount" HeaderText="ViewCount" />
                <asp:BoundField DataField="FileSource" HeaderText="File Source" />
                        <asp:ButtonField CommandName="buttonlink" Text="Edit"/>
        <asp:CommandField ShowEditButton="true" ButtonType="Button" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="linkbutton" runat="server" OnClick="buttonlink" CommandArgument="<%# Eval("ID") %>">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
    </div>--%>

    <%-- <div id="dvGrid" style="padding: 10px; width: 450px">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                    DataKeyNames="CustomerId" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" PageSize="3" AllowPaging="true" OnPageIndexChanging="OnPaging"
                    OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
                    Width="450"  OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:TemplateField ShowHeader="False" ItemStyle-Width="50px">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnSelect" runat="server" CausesValidation="false" CommandName="Select" Text="Select" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Namedf" HeaderText="Name" ItemStyle-Width="20px">
                            <ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Activedf" HeaderText="Active" ItemStyle-Width="300px">
                            <ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="ViewCountdf" HeaderText="View Count" ItemStyle-Width="500px">
                            <ItemStyle Width="350px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="FileSourcedf" HeaderText="FileSource" ItemStyle-Width="100px">
                            <ItemStyle Width="100px"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField ShowHeader="False" ItemStyle-Width="50px">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnNew" runat="server" CausesValidation="false" CommandName="NewMember" Text="New" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False" ItemStyle-Width="50px">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnDelete" runat="server" CausesValidation="false" CommandName="DeleteMember" Text="Delete" CommandArgument='<%# Container.DataItemIndex %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

        <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
            <tr>
                <td style="width: 150px">Name:<br />
                    <asp:TextBox ID="txtName" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Country:<br />
                    <asp:TextBox ID="txtCountry" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
                </td>
            </tr>
        </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>--%>


    <%-- <h5 runat="server" id="mainlabel">Loading Content</h5>
    <asp:Table ID="Table1" runat="server">
        <asp:TableHeaderRow CssClass="" ID="Names"></asp:TableHeaderRow>
        <asp:TableHeaderRow CssClass="" ID="File"></asp:TableHeaderRow>
        <asp:TableHeaderRow CssClass="" ID="Actives"></asp:TableHeaderRow>
        <asp:TableHeaderRow CssClass="" ID="Viewcount"></asp:TableHeaderRow>
        <button runat="server" id="button"></button>
    </asp:Table>

    <telerik:RadNotification ID="RadNotification1" runat="server" Animation="Slide" Position="Center" Title="User Error" EnableRoundedCorners="True" EnableShadow="True"></telerik:RadNotification>

        <form id="form1" runat="server">  
    <div >  
   <asp:gridview runat="server" ID="Gv1" AutoGenerateColumns="true" HeaderStyle-BackColor="Red" BackColor="LightBlue"  
    BorderWidth="5" BorderColor="Blue">  
   </asp:gridview>  
    </div>  
    <div>  
    <h1>Add New Row.....</h1>  
        Product NO:       
    <asp:TextBox ID="txtb1" runat="server"></asp:TextBox>  
        <br />  
        Product Name:   
     <asp:TextBox ID="txtb2" runat="server"></asp:TextBox>  
        <br />  
        Order Date:        
      <asp:TextBox ID="txtb3" runat="server"></asp:TextBox>  
       <asp:Label runat="server" Text="dd/mm/yyyy"></asp:Label>  
        <br />      Quantity:            
       <asp:TextBox ID="txtb4" runat="server"></asp:TextBox>  
        <br />  
        <br />  
                 
              
          
       <asp:Button runat="server" OnClick="Addnewrow" Text="Add Row" />  
    </div>  
    </form> --%>

    <script>
        function ShowDetailPopup7(Doc_Ref) {
            SetContentUrl('~/Advertisment.aspx?id=' + Doc_Ref);


        }
    </script>
</asp:Content>


