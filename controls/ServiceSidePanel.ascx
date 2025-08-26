<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ServiceSidePanel.ascx.vb" Inherits="Ram.cd.ServiceSidePanel" %>

<div class="vry-left">
    <a href="~/verifier.aspx" style="text-decoration:none;" id="verifyLink" runat="server" >
        <div class="vry-a2" id="verifyTag" runat="server">
            <img src="~/img/VerifyIMEI.png" alt="images not found" id="verifyImage" runat="server" />
            <p><%=GetContent("Services_Menu_VerifyIMEI") %></p>
        </div>
    </a>
    <%-- requires checkallowed  --%>
    <a href="~/Services-Verify-Multiple-IMEI.aspx" style="text-decoration:none;" id="verifyMultiLink" runat="server" >
        <div class="vry-a2" id="verifyMultiTag" runat="server">
            <img src="~/img/VerifyMultiple.png" alt="images not found"  id="verifyMultiImage" runat="server"/>
            <p><%=GetContent("Services_Menu_VerifyMultipleIMEI") %></p>
        </div>
    </a>
    <a href="Services-Register-Multi-SIM.aspx"  style="text-decoration:none;" >
        <div class="vry-a2" id="registerMultiTag" runat="server">
            <img src="~/img/RegisterDualSIm.png" alt="images not found" id="registerMultiImage" runat="server" />
            <p><%=GetContent("Services_Menu_RegisterDualSim") %></p>
        </div>
    </a>
    <a href="~/payment-info.aspx" style="text-decoration:none;"  id="paymentInfo" runat="server">
        <div class="vry-a2" id="payInfoTag" runat="server">
            <img src="~/img/CheckRAMFees.png" alt="images not found" id="payInfoImage" runat="server" />
            <p><%=GetContent("Services_Menu_CheckRAMFees") %></p>
        </div>
    </a>
        <%-- checkallowed 2 --%>
    <a href="~/Services-Unblock-Phone.aspx" style="text-decoration:none;" id="unblockLink" runat="server">
        <div class="vry-a2" id="unblockTag" runat="server">
            <img src="~/img/UnblockPhone.png" alt="images not found" id="unblockImage" runat="server" />
            <p><%=GetContent("Services_Menu_UnBlockPhone") %></p>
        </div>
    </a>
    <%-- checkallowed 2 --%>
    <a href="~/Services-Block-Phone.aspx" style="text-decoration:none;" id="blockLink" runat="server">
        <div class="vry-a2" id="blockTag" runat="server">
            <img src="~/img/BlockPhone.png" alt="images not found"  id="blockImage" runat="server"/>
            <p><%=GetContent("Services_Menu_BlockPhone") %></p>
        </div>
    </a>
</div>
