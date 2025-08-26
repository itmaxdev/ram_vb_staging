<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="SiteFooter.ascx.vb" Inherits="Ram.cd.SiteFooter" %>

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


<footer class="footer-area">
    <div class="container">
        <div class="footer-top">
            <p style="display: none;">
                Hi there,  I am Alan. I am a
                            <br />
                friendly, helpful bot working for<br />
                <span>RAM</span>  <i class="fas fa-times" aria-hidden="true"></i>
            </p>
            <a href="#" style="display: none;">
                <img src="../img/sr5.png" alt="icon" />
            </a>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4">
                <div class="footer-a1">
                    <a href="#">
                        <img src="../img/footer/logo-footer.png" alt="logo" style="max-height: 60px" />
                    </a>
                    <h3><%=GetContent("StayConnected") %></h3>
                    <ul>
                        <li><a href="https://www.facebook.com/ramrdcongo/" rel="noreferrer noopener" target="_blank"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                        <li><a href="https://twitter.com/ramrdcongo" rel="noreferrer noopener" target="_blank"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="https://instagram.com/ramrdcongo?igshid=1ckdwosth1ead" rel="noreferrer noopener" target="_blank"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="https://www.youtube.com/channel/UC29fmRU26w5UVVZ-dQBfR0w" rel="noreferrer noopener" target="_blank"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="footer-a2">
                    <h3><%=GetContent("QuickLinks") %></h3>
                    <ul>
                        <li><a href="/Default.aspx"><%=GetContent("MenuAbout") %></a></li>
                        <li><a href="/Services.aspx"><%=GetContent("MenuServices") %></a></li>
                        <li><a href="/FAQ.aspx"><%=GetContent("MenuFAQ") %></a></li>
                        <li><a href="/Contacts.aspx"><%=GetContent("MenuContacts") %></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="footer-a3">
                    <h3><%=GetContent("NewsHeading") %></h3>
                    <div class='mobileSpacer'></div>
                    <%=LoadNews() %>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="async" src="https://www.googletagmanager.com/gtag/js?id=G-LKDQ79BERS"></script>
<script>/*<a href="../Services.aspx">../Services.aspx</a>*/
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-LKDQ79BERS');
</script>
