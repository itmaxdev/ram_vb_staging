<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="SiteHeader.ascx.vb" Inherits="Ram.cd.SiteHeader" %>

<style>
    @media (max-width: 600px) {

        .mobilespacing {
            padding-bottom: 20px;
        }

        .mobileSpacer {
            height: 15px;
        }
    }
</style>
<header class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2">
                <div class="header-left">
                    <a href="/Default.aspx">
                        <img src="img/logo.png" alt="logo" />
                    </a>
                </div>
            </div>
            <div class="col-lg-10 col-md-10" style="display: inline-flex; justify-content: flex-end;">
                <div class="topnavnew" style="display: inline-flex;">
                    <ul style="display: inline-flex; margin: 0; height: 3.5rem; float: right; padding-left: 0px;">
                        <li style="display: inline-flex; margin: auto;"><a runat="server" id="HomeTag" href="/" style="text-decoration: none;"><%=GetContent("MenuHome") %> </a></li>
                        <li style="display: inline-flex; margin: auto;"><a runat="server" id="ServiceTag" href="/Services.aspx" style="text-decoration: none; margin-left: 30px;"><%=GetContent("MenuServices") %></a></li>
                        <li style="display: inline-flex; margin: auto;"><a runat="server" id="NewsTag" href="/News.aspx" style="text-decoration: none; margin-left: 30px;"><%=GetContent("MenuNews") %></a></li>
                        <li style="display: inline-flex; margin: auto;"><a runat="server" id="FAQTag" href="/FAQ.aspx" style="text-decoration: none; margin-left: 30px;"><%=GetContent("MenuFAQ") %></a></li>
                        <li style="display: inline-flex; margin: auto;"><a runat="server" id="ContactsTag" href="/Contacts.aspx" style="text-decoration: none; margin-left: 30px; margin-right: 30px;"><%=GetContent("MenuContacts") %></a></li>
                    </ul>
                </div>
                <div class="topnavnew" style="display: inline-flex;">
                    <ul style="display: inline-flex; margin: 0; height: 3.5rem; float: right; border-left:0.4px solid lightgray; padding-left: 0px;">

                        <%=PlotLanguages() %>
                        <li style="border-right:0.4px solid lightgray;"></li>
                        <li style="display: inline-flex; margin: auto;">
                            <img src="img/sr1.png" style="max-width: 130px; margin-left: 30px;" alt="images not found" />
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>

<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-LKDQ79BERS');
</script>
