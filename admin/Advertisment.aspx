<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/RamAdmin.Master" CodeBehind="Advertisment.aspx.vb" Inherits="Ram.cd.Advertisement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadBeforeCSS" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">

    <form class="row g-3">

        <br />
        <br />
        <br />
        <div class="row g-3">
            <div class="col-md-6">
                <label class="form-label fs-4" style="font-weight:600">ID</label>
                <asp:TextBox ID="IDtxb" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>
            <div class="col-md-6">

                <label class="form-label fs-4" style="font-weight:600">Name</label>
                <asp:TextBox ID="Nametxb" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="row g-3">
            <div class="col-6">
                <label class="col-lg-11 fs-4" style="font-weight:600">View count</label>
                <asp:TextBox ID="Viewcounttxb" runat="server" CssClass="form-control disabled"  Enabled="false"></asp:TextBox>
            </div>
            <div class="col-6">
                <label class="form-label fs-4" style="font-weight:600">Active</label>
                <asp:DropDownList ID="Activeslt" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select item"></asp:ListItem>
                    <asp:ListItem Text="False" Value="0"></asp:ListItem>
                    <asp:ListItem Text="True" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row g-3">
            <div class="col-md-6">
                <label class="form-label fs-4" style="font-weight:600">File uploaded</label>
                <asp:TextBox ID="Filepathtxb" runat="server" CssClass="form-control"></asp:TextBox>
                <br />

            </div>
            <div class="col-md-6">
               <br />
               <br />
                <asp:FileUpload ID="Uploader"
                    runat="server" Font-Size="Medium"></asp:FileUpload>
            </div>
        </div>

        <div class="col-12">
            <asp:Button ID="Updatebtn"
                Text="Update"
                runat="server" CssClass="btn btn-primary" OnClick="Button1_Click"></asp:Button>

            <asp:Button ID="Deletebtn"
                Text="Deactivate Advert" 
                runat="server" CssClass="btn btn-danger"></asp:Button>

             <asp:Button ID="Backbtn"
                Text="Back"  
                runat="server" CssClass="btn btn-light"  OnClick="back"></asp:Button>

        </div>
    </form>

    <%--       <hr />
       
       <asp:Label id="UploadStatusLabel"
           runat="server">
       </asp:Label>        
    </div>
    </form>--%>
</asp:Content>

