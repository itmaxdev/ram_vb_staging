<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Ram.cd._Default2" %>

<!DOCTYPE html >
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="google" value="notranslate">
    <title>ram.cd WiFi</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=IBM+Plex+Sans:wght@100;200;300;500&family=Share+Tech&family=Ubuntu:ital,wght@0,300;0,500;1,400;1,500;1,700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=IBM+Plex+Sans:wght@100;200;300;500&family=Raleway:ital,wght@0,100;0,300;0,400;0,600;0,700;0,900;1,600;1,800&family=Share+Tech&family=Ubuntu:ital,wght@0,300;0,500;1,400;1,500;1,700&display=swap" rel="stylesheet">
    <script src="scripts/sweetalert.min.js"></script>
    <script type="text/javascript">
        function nothuman(s) {
            var response = 'live' //grecaptcha.getResponse();
            if (response.length == 0) {
                swal('<%=GetContentA("Invalid Recaptcha", LanguageID)%>');
                return false;
            }
            else {
                var imri = document.getElementById('txtIMEI');
                var msis = document.getElementById('txtPhone');

                //var tcode = tcodee.options[tcodee.selectedIndex].value;
                if (imri.value == "") {
                    swal('<%=GetContentA("Invalid IMEI", LanguageID)%>');
                    return false;
                }
                if (chkterms.checked != true) {
                    swal('<%=GetContentA("Terms not accepted", LanguageID)%>');
                    return false;
                }

                if (imri.value.length < 14) {
                    swal('<%=GetContentA("Make sure your IMEI is 15 digits.", LanguageID)%>');
                    return false;
                }
                var outputres = document.getElementById('results');
                swal({
                    text:"<%=GetContentA("Please wait", LanguageID)%>.",
                    button: false
                });

                if (msis.value != "") {
                    var phonenumstring = msis.value.toString();
                    var lengthcheck = phonenumstring.length;
                    if (lengthcheck < 9 || lengthcheck > 13) {
                        swal('<%=GetContentA("Invalid Phone Number", LanguageID)%>');
                        return false;
                    } else {
                        msis.value;
                    }
                }
                const params = new URLSearchParams(window.location.search);
                var sitekey = params.get('sitekey')

                var result = PageMethods.ProcessWiFi(imri.value, msis.value,  <%=LanguageID%>, sitekey, function (response) {
                    if (response == "" || response == "Account not found" || response == "Compte non trouv&eacute;") {
                        if (response == "Compte non trouv&eacute;") {
                            response = "Compte non trouvé";
                        }
                        swal(response);
                    }
                    else {
                        if (response.includes("merci") || response.includes("Merci")) {
                            swal(response).then(() => {
                                window.location.href = '/';
                            });
                        }
                        else {
                            swal(response);
                        }
                    }
                });
            }
        }
    </script>
        <style>
            /*@media only screen and (max-width: 600px) {
                .login-img video {
                    width: 250px !important;
                    height: 250px !important;
                }
            }
                 .logo-img {
                    margin-bottom: 0px !important;
                }*/
                 
                 @media only screen and (max-width: 479px) {
                .login-img video {
                    width: 200px !important;
                    height: 100px !important;
                }
             /*   .logo-img {
                    margin-bottom: 0px !important;
                    height:50% !important; 
                     width:30% !important; 
                }*/
/*                 .h1{
                     font-size:20px !important;
                 }*/
                 input, label, p {
                     font-size:10px !important;
                 }
                 #bitmap{ 
                     width: 12% !important;
                 }
                 #arptc{
                     width: 20% !important;
                 }
                 #txtIMEI{
                     height:8px !important;;
                     font-size: 10px !important;
                 }
                 #txtPhone{
                     height:8px !important;
                     font-size: 10px !important;
                 }
                 #man-icon{
                     height:8px !important; 
                     width:7px !important;
                 }
                 #pass-icon{
                     height:8px !important;
                     width:7px !important;
                 }
                 #btnSubmit {
                     height:30px !important; 
                     font-size:10px !important; 
                 }
                 #logo{
                     height:40% !important; 
                     width:20% !important; 
                     font-size:10%
                 }
                 #heading{
                     font-size:20px !important;
                 }
            }
                 

       </style>

</head>
<body>
 <form id="form1" runat="server">
        <telerik:RadScriptManager runat="server" ID="scriptmanager" EnableEmbeddedjQuery="false">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryExternal.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryPlugins.js" />
            </Scripts>
        </telerik:RadScriptManager>
     <div class="login-section-main">
        <div class="bottom-left-circle">
            <img src="images/circle-main.svg" alt="">
        </div>
        <div class="bottom-right-circle">
            <img src="images/top-right-circle.svg" alt="">
        </div>
        <div class="login-area-main">
            <div class="lam-child2">
                <h1 class="login-heading" id="heading">Connectez-vous!</h1>
                <p class="paragraph">Obtenez votre identifiant et mot de passe en composant *470# YES</p>
                <div class="lam-container">

                    <div class="input-container">
                        <input type="text" name="txtPhone" id="txtPhone" class="login-input-text" placeholder="Identifiant">
                        <img src="images/man-icon.png" alt="" id="man-icon">
                    </div>
                    <br>
                    <div class="input-container">
                        <input type="text" name="txtIMEI" id="txtIMEI" class="login-input-text" placeholder="Mot de passe">
                        <img src="images/pass-icon.png" alt="" id="pass-icon">
                    </div>

                    <div class="checkbox-container">
                        <!-- <label>
                            <input type="checkbox" checked="checked">
                            J'accepte les conditions générales
                            et la politique de confidentialité
                        </label> -->
                        <label class="container">
                            J'accepte les conditions générales et la politique de confidentialité
                            <input id="chkterms" name="chkterms" type="checkbox" checked="checked">
                            <span class="checkmark"></span>
                        </label>
                    </div>


                    <div class="button-main-div">
                        <button class="soumettre-button" id="btnSubmit" onclick="nothuman();">Soumettre</button>
                    </div>
                    <div class="icon-main-div">
                        <div>
                            <a href="https://www.facebook.com/ramrdcongo/" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        </div>
                        <div>
                            <a href="https://www.youtube.com/channel/UC29fmRU26w5UVVZ-dQBfR0w" target="_blank"><i class="fab fa-youtube"></i></a>
                        </div>
                        <div>
                            <a href="https://instagram.com/ramrdcongo?igshid=1ckdwosth1ead"><i class="fab fa-instagram"></i></a>
                        </div>
                        <div>
                            <a href="https://twitter.com/ramrdcongo" target="_blank"><i class="fab fa-twitter"></i></a>
                        </div>

                    </div>

                </div>
            </div>
            <div class="lam-child1">
                <div class="logo-img">
                    <img src="images/logo.svg" alt="" id="logo">
                </div>
                <div class="login-img">
                    <video src="Advert/Ram HD2.mp4" controls="controls" autoplay="autoplay" muted="muted"></video>
                </div>
                <div class="arptc-img">
                    <img src="images/bitmmap.svg" style="width: 70px; margin-right: 30px;" alt="" id="bitmap">
                    <img src="images/arptc.svg" alt="" id="arptc">
                </div>

            </div>
        </div>
    </div>
    <script>
        txtIMEI.oninput = function () {
            if (this.value.length > 15) {
                this.value = this.value.slice(0, 15);
            }
        }
        txtPhone.oninput = function () {
            if (this.value.length > 12) {
                this.value = this.value.slice(0, 12);
            }
        }
    </script>
     </form>
</body>
</html>
