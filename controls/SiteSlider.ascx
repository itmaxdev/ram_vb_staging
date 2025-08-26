<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="SiteSlider.ascx.vb" Inherits="Ram.cd.SiteSlider" %>


<section class="sliderSection sliderSection2" style="background-image: linear-gradient(to right, #48a6e2, #4597e7, #2675e7);">
    <div class="container-fluid">
        <div class="row">
            <div class="tp-banner">
                <ul>
                    <li data-transition="boxfade" data-slotamount="7" data-masterspeed="1000">
                        <%--<img src="img/Slider3.jpg" />--%>
                        <div class="tp-caption sfb"
                            data-x="left"
                            data-y="center"
                            data-hoffset="85"
                            data-voffset="-90"
                            data-speed="1600"
                            data-start="1500"
                            data-easing="Power4.easeOut">
                            <div class="revCont">
                                <div class="svo-part">
                                    <h1 runat="server" id="sliderTitle"></h1>
                                    <span style="width: 100%;"></span>
                                </div>
                            </div>
                        </div>
                        <div class="tp-caption sfb"
                            data-x="105"
                            data-y="22"
                            data-hoffset="120"
                            data-voffset="1"
                            data-speed="2000"
                            data-start="2500"
                            data-easing="Power4.easeOut">
                            <div class="revCont">
                                <img src="img/plus-3.png" style="max-height: 20px" id="3" />
                            </div>
                        </div>
                        <div class="tp-caption sfb"
                            data-x="450"
                            data-y="75"
                            data-hoffset="65"
                            data-voffset="90"
                            data-speed="2000"
                            data-start="2500"
                            data-easing="Power4.easeOut">
                            <div class="revCont">
                                <img src="img/plus-3.png" style="max-height: 12px" id="4" />
                            </div>
                        </div>
                        <div class="tp-caption sfb text-left"
                            data-x="center"
                            data-y="center"
                            data-hoffset="125"
                            data-voffset="-100"
                            data-speed="2000"
                            data-start="3000"
                            data-easing="Power4.easeOut">
                            <div class="revBtn">
                                <img src="img/Shape-new.png" />
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<asp:LoginView runat="server" ID="LoginView1">
    <AnonymousTemplate>
        <a href="Login.aspx" style="display: none;">
            <img src="img/sr6.png" alt="icon" class="svo_img" />
        </a>
    </AnonymousTemplate>
    <LoggedInTemplate>
        <a href="LogOut.aspx">
            <img src="img/sr13.png" alt="icon" class="svo_img" />
        </a>
    </LoggedInTemplate>
</asp:LoginView>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-LKDQ79BERS');
</script>
