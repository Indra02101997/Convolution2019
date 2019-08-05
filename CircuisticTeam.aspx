<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CircuisticTeam.aspx.cs" Inherits="CircuisticTeam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Circuistic Team</title>
	<meta name="keywords" content="blueprint, template, html, css, menu, responsive, mobile-friendly" />
	<meta name="author" content="Indraneel Pal" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="shortcut icon" href="favicon.ico"/>
	<!-- food icons -->
	<link rel="stylesheet" type="text/css" href="css/organicfoodicons.css" />
	<!-- demo styles -->
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<!-- menu styles -->
	<link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<script type="text/javascript" src="js/modernizr-custom.js"></script>
     <!-- Bootstrap Core CSS -->

    <style type="text/css">

 /** Button Style **/
.button {
  /** Font Style **/
   font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
  text-transform:uppercase;
  font-size:14px;
	color:#fff;
  text-decoration:none;
	font-weight:bold;
	text-transform:uppercase;
	text-shadow:rgba(0, 0, 0, 0.30) 0 -1.25px 0;
	position:fixed;top:1%;right:2%;
  
  /** Button Style **/ 
  display:-moz-inline-stack;
  -webkit-font-smoothing:antialiased;
	display:inline-block;
	vertical-align:middle;
	vertical-align:auto;
	zoom:1;
  margin-top: 10px;
  margin-bottom: 10px;
	border:1px solid #13619f;
	background: #2371b7;
	padding:11px 20px;
	-webkit-border-radius:3px;
	-moz-border-radius:3px;
	-ms-border-radius:3px;
	-o-border-radius:3px;
	border-radius:3px;
	-webkit-box-shadow:rgba(255, 255, 255, 0.3) 0 1px 0, inset rgba(255, 255, 255, 0.3) 0 1px 0;
	-moz-box-shadow:rgba(255, 255, 255, 0.3) 0 1px 0, inset rgba(255, 255, 255, 0.3) 0 1px 0;
	box-shadow:rgba(255, 255, 255, 0.3) 0 1px 0, inset rgba(255, 255, 255, 0.3) 0 1px 0;
    border-radius:25px;
}

/** Active State Style **/
.button:active {
	border-color:#083559;
	-webkit-box-shadow:rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;
	-moz-box-shadow:rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;
	box-shadow:rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;


</style>
    <style type="text/css">
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            left:0;
            text-align:center;
        }
   .fa {
  padding: 10px;
  font-size: 15px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
  
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
  z-index:auto;
}
.fa-youtube {
  background: #bb0000;
  color: white;
  z-index:auto;
}

.fa-instagram {
  background: #125688;
  color: white;
  z-index:auto;
}

    </style>
 <style type="text/css">
* {box-sizing: border-box;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */



/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}  
</style>
    <style type="text/css">
        

.btn-liquid .inner {
	position: relative;

	z-index: 2;
}

.box {
  background: linear-gradient(to right, gold, darkorange);
  color: white;
  --width: 180px;
	--height: calc(var(--width) / 3);
  width: calc(var(--width));
  height: calc(var(--height));
  text-align: center;
  line-height: calc(var(height));
  font-size: calc(var(--height) / 2.5);
  font-family: sans-serif;
  letter-spacing: 0.2em;
  border: 1px solid darkgoldenrod;
  border-radius: 2em;
  transform: perspective(500px) rotateY(-15deg);
  text-shadow: 6px 3px 2px rgba(0, 0, 0, 0.2);
  box-shadow: 2px 0 0 5px rgba(0, 0, 0, 0.2);
  transition: 0.5s;
  position: relative;
  overflow: hidden;
  cursor:pointer;
}

.box:hover {
  transform: perspective(500px) rotateY(15deg);
  text-shadow: -6px 3px 2px rgba(0, 0, 0, 0.2);
  box-shadow: -2px 0 0 5px rgba(0, 0, 0, 0.2);
}

.box::before {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  background: linear-gradient(to right, transparent, white, transparent);
  left: -100%;
  transition: 0.5s;
}

.box:hover::before {
  left: 100%;
}
        .img {
            border-radius:50%;
            cursor:pointer;
        }
        .resize {
            width: 143px;
            height: 143px;
        }
        .resize1 {
            width: 143px;
            height: 143px;
        }
        .content {
            position: relative;
            margin-top: 10vh;
            height: 150vh;
            left: 50vh;
            width: 151vh;
            overflow-x: hidden;
            overflow-y: hidden;
            z-index: auto;
        }
        .column {
            float: left;
            width: 33.33%;
            padding: 7px;
        }
        .row {
            visibility:collapse;
            margin-left:10vh;
        }
/* Clearfix (clear floats) */
        .row::after {
            content: "";
            clear: both;
            display: table;

        }
        .datalist {
            visibility:visible;
        }
        .caption {
            margin-left:4vh;
        }
        @media screen and (max-width: 650px) and (min-width:200px) {
            .content {
                margin-top: 5vh;
                width: 100%;
                height: auto;
                max-width: 100%;
                margin-bottom: 5vh;
                overflow-x: hidden;
                overflow-y: hidden;
                left: auto;
                display:block;
            }
            .datalist {
                visibility:collapse;
                display:block;
            }
            .row {
                visibility:visible;
                margin-left:5vh;
                display:block;
            }
            .column {
                padding-right:18vh;
                display:block;
            }
            .caption {
                font-size:10px;
                margin-left:5vh;
            }
            .resize {
                width: 100px;
                height: 100px;
            }
            .resize1 {
                width: 100px;
                height: 100px;
            }
            .copyright1 {
                text-align: center;
                color: #fff;
                font-size: 10px;
                padding-top: 0px;
                position: relative;
                bottom: 0.55vh;
                left: 1.4vh;
                opacity: .65;
            }
            .copyright {
                visibility:hidden;
                content:none;
                height:0;
            }
            .footer {
                background-color:#2a2b30;
            }
            .menu {
                overflow-y:auto;
                overflow-x:auto;
                z-index:10000;
                height:120vh;
                max-height:100vh;
                display:block;
            }
            #lblPageName {
                visibility:hidden;
            }
            .section-heading {
                margin-left: 0vh;
            }
        }
        @media screen and (max-width: 1024px) and (min-width:700px) {
            .content {
                margin-top: 8vh;
                width: 100%;
                height: auto;
                max-width:100%;
                overflow-x: auto;
                overflow-y: auto;
                z-index: 500;
                left: auto;
                display:block;
            }
            .menu {
                z-index:1000;
                top:0;
                height:100%;
            }
            .copyright {
                visibility:collapse;
            }
            .copyright1 {
                left:35vh;
                font-size:11px;
                padding-top:0;
            }
            .section-heading {
                margin-left:20vh;
            }
            .row {
                margin-left:35vh;
                visibility:visible;
            }
            .column {
                padding-right:10vh;
            }
            .resize {
                width: 100px;
                height: 100px;
            }
            .resize1 {
                width: 100px;
                height: 100px;
            }
            #lblPageName {
                visibility:hidden;
            }
            .datalist {
                visibility:collapse;
            }
            .caption {
                margin-left:0.5vh;
            }
        }
</style>
    <script type="text/javascript">
        $(function () {
            blinkeffect('#lblPageName');
        })
        function blinkeffect(selector) {
            $(selector).fadeOut('slow', function () {
                $(this).fadeIn('slow', function () {
                    blinkeffect(this);
                });
            });
        }
</script>

</head>
<body>
    <div class="container" >
		<!-- Blueprint header -->
		<header class="bp-header cf">
			<div class="dummy-logo">
				<div id="lblPageName" class="dummy-icon foodicon foodicon--coconut" style="content:url('/img/flogo.jpg');  border-radius:50%; margin-left:17vh;"></div>
				<h2 class="dummy-heading" style="color:yellow;opacity:0.5;">Convolution 19</h2>
			</div>
		</header>
		<button class="action action--open" aria-label="Open Menu"><span class="icon icon--menu"></span></button>
		<nav id="ml-menu" class="menu">
			<button class="action action--close" aria-label="Close Menu"><span class="icon icon--cross"></span></button>
			<div class="menu__wrap">
				<ul id="Ul1" runat="server" data-menu="main" class="menu__level" tabindex="-1" role="menu" aria-label="All">
                    <li id="Li1" runat="server" class="menu__item" role="menuitem"><a id="A1" runat="server" class="menu__link" data-submenu="submenu-5" aria-owns="submenu-5" href="/Home.aspx" target="_blank">Home</a></li>
					<li id="Li2" runat="server" class="menu__item" role="menuitem"><a id="A2" runat="server" class="menu__link" data-submenu="submenu-1" aria-owns="submenu-1" href="#">Events</a></li>
					<li id="Li3" runat="server" class="menu__item" role="menuitem"><a id="A3" runat="server" class="menu__link" data-submenu="submenu-2" aria-owns="submenu-2" href="#">Workshops</a></li>
					<li id="Li4" runat="server" class="menu__item" role="menuitem"><a id="A4" runat="server" class="menu__link" data-submenu="submenu-3" aria-owns="submenu-3" href="/Sponsors.aspx">Sponsors</a></li>
					<li id="Li5" runat="server" class="menu__item" role="menuitem"><a id="A5" runat="server" class="menu__link" data-submenu="submenu-4" aria-owns="submenu-4" href="#">Committee</a></li>
					<li id="Li7" runat="server" class="menu__item" role="menuitem"><a id="A6" runat="server" class="menu__link"  href="/Data/Routine.pdf" target="_blank" >Schedule</a></li>
                    
				</ul>
				<!-- Submenu 1 -->
				<ul  data-menu="submenu-1" id="submenu-1" class="menu__level" tabindex="-1" role="menu" aria-label="Events">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="Circuistic.aspx">Circuistic</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="Sparkhack.aspx">Sparkhack</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="Algomaniac.aspx">Algomaniac</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="Papier.aspx">Papier</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="Decisia.aspx">Decisia</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="Inquizzitive.aspx">Inquizzitive</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="TechHunt.aspx">TechHunt</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="AbolTabol.aspx">AbolTabol</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="PD.aspx">PD</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="24Frames.aspx">24Frames</a></li>
				</ul>
				<!-- Submenu 2 -->
				<ul  data-menu="submenu-2" id="submenu-2" class="menu__level" tabindex="-1" role="menu" aria-label="Workshops">
					<li id="Li6" runat="server" class="menu__item" role="menuitem"><a id="workshop" class="menu__link" href="/IOT.aspx" runat="server">IOT</a></li>				
				</ul>
				<!-- Submenu 2-1 -->
				
				<!-- Submenu 3 -->
				
				<!-- Submenu 4 -->
                <ul data-menu="submenu-4" id="submenu-4" class="menu__level" tabindex="-1" role="menu" aria-label="Committee">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="CoreCommittee.aspx">Core Committee</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="CircuisticTeam.aspx">Circuistic Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="AlgomaniacTeam.aspx">Algomaniac Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="SparkHackTeam.aspx">SparkHack Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="DecisiaTeam.aspx">Decisia Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="PapierTeam.aspx">Papier Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="InquizzitiveTeam.aspx">Inquizzitive Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="AbolTabolTeam.aspx">AbolTabol Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="TechHunt.aspx">TechHunt Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="24FramesTeam.aspx">24Frames Team</a></li>
                    <li class="menu__item" role="menuitem"><a class="menu__link" href="PDTeam.aspx">PD Team</a></li>
				</ul>
				
			</div>
            </nav>
		<div class="content" style="background-color:#2a2b30;">
            <form id="form1" runat="server">
                <p class="section-heading" style="margin-top:auto; text-align:center; text-decoration:solid; font-size:20px; font-weight:bold; font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif; z-index:auto;"><u>Circuistic Team</u></p>
                <div style="text-align:center; display:flexbox;" class="datalist">
                    <asp:DataList ID="Datalist1" runat="server" HorizontalAlign="Center" RepeatDirection="Horizontal"  RepeatColumns="4" DataKeyField="Email"  CellPadding="0" CellSpacing="20">
                <ItemTemplate>
                <asp:Image ID="imagebutton1" runat="server" ImageUrl='<%#Eval("Image") %>' Width="150px" Height="150px" CssClass="img" />          
                <div style="position:relative; top:auto; text-align:center ; opacity:0.60;">
                    <asp:Label ID="Name" runat="server" Text='<%#Eval("Name") %>' Font-Bold="False" Font-Italic="false" Font-Names="Arial" Font-Size="16px" ForeColor="White"></asp:Label>
                <br />
                    <asp:Label ID="Post" runat="server" Text='<%#Bind("PhoneNo") %>' Font-Bold="False" Font-Names="Arial" Font-Italic="false" Font-Size="16px" ForeColor="White"></asp:Label>
            </div>
            </ItemTemplate>
        </asp:DataList>
            </div>
                <div class="row">
                    <div class="column">
                    <img class="resize" src="Team/Kingshuk.jpg" style=" border-radius:50%" />
                     <figcaption class="caption" id="Figcaption1" runat="server">Kingshuk Sadhu (Lead 1st year)</figcaption>
                     <figcaption class="caption" id="Figcaption3" runat="server"> 7908850299 </figcaption>
                   </div>
                    <div class="column" style="">
                     <img class="resize1" src="Team/Ritankar.jpeg" style=" border-radius:50%" />
                        <figcaption id="Figcaption2" class="caption" runat="server">Ritankar Kumar(1st year member)</figcaption>
                        <figcaption class="caption" id="Figcaption4" runat="server">7001462880</figcaption>
                     </div>                    
                </div>
                <div class="row">
                    <div class="column">
                    <img class="resize" src="Team/Mayukh.jpg" style=" border-radius:50%" />
                     <figcaption class="caption" id="Figcaption5" runat="server">Mayukh Chowdhury(1st year member)</figcaption>
                     <figcaption class="caption" id="Figcaption6" runat="server">8001404644</figcaption>
                   </div>
                    <div class="column" style="">
                     <img class="resize1" src="Team/Soumya.jpeg" style=" border-radius:50%" />
                        <figcaption id="Figcaption7" class="caption" runat="server">Soumya Sarkar(1st year member)</figcaption>
                        <figcaption class="caption" id="Figcaption8" runat="server">8240622767</figcaption>
                     </div>                    
                </div>
                <div class="row">
                    <div class="column">
                    <img class="resize" src="Team/Sukanya.jpg" style=" border-radius:50%" />
                     <figcaption class="caption" id="Figcaption9" runat="server">Sukanya Das(1st year member)</figcaption>
                     <figcaption class="caption" id="Figcaption10" runat="server">8348604462</figcaption>
                   </div>              
                </div>
                <div class="row">
                    <div class="column">
                    <img class="resize" src="Team/Sourin.jpg" style=" border-radius:50%" />
                     <figcaption class="caption" id="Figcaption11" runat="server">Sourin Banerjee(2nd year Lead)</figcaption>
                     <figcaption class="caption" id="Figcaption12" runat="server">8240628203</figcaption>
                   </div>
                    <div class="column" style="">
                     <img class="resize1" src="Team/Supriyo.jpg" style=" border-radius:50%" />
                        <figcaption id="Figcaption13" class="caption" runat="server">Supriyo Ghosh(2nd year member)</figcaption>
                        <figcaption class="caption" id="Figcaption14" runat="server">9062712405</figcaption>
                     </div>                    
                </div>
                <div class="row">
                    <div class="column">
                    <img class="resize" src="Team/Hardik.jpeg" style=" border-radius:50%" />
                     <figcaption class="caption" id="Figcaption15" runat="server">Hardik Dalmia(2nd year member)</figcaption>
                     <figcaption class="caption" id="Figcaption16" runat="server">9874426802</figcaption>
                   </div>
                    <div class="column" style="">
                     <img class="resize1" src="Team/Sayan.jpg" style=" border-radius:50%" />
                        <figcaption id="Figcaption17" class="caption" runat="server">Sayan Mukherjee(2nd year member)</figcaption>
                        <figcaption class="caption" id="Figcaption18" runat="server">8902699206</figcaption>
                     </div>                    
                </div>
                <div class="row">
                    <div class="column">
                    <img class="resize" src="Team/PPC.jpg" style=" border-radius:50%" />
                     <figcaption class="caption" id="Figcaption19" runat="server">Pranabendra Prasad Chandra(3rd year Lead)</figcaption>
                     <figcaption class="caption" id="Figcaption20" runat="server">8334958448</figcaption>
                   </div>
                    <div class="column" style="">
                     <img class="resize1" src="Team/Anwesa.jpg" style=" border-radius:50%" />
                        <figcaption id="Figcaption21" class="caption" runat="server">Anwesa Bhattacharya(3rd year member)</figcaption>
                        <figcaption class="caption" id="Figcaption22" runat="server">8777287718</figcaption>
                     </div>                    
                </div>
                <div class="row">
                    <div class="column">
                    <img class="resize" src="Team/Ananya1.jpg" style=" border-radius:50%" />
                     <figcaption class="caption" id="Figcaption23" runat="server">Ananya Srivastava(3rd year member)</figcaption>
                     <figcaption class="caption" id="Figcaption24" runat="server">9007532674</figcaption>
                   </div>
                    <div class="column" style="">
                     <img class="resize1" src="Team/Ashis.png" style=" border-radius:50%" />
                        <figcaption id="Figcaption25" class="caption" runat="server">Ashis Nandi(3rd year member)</figcaption>
                        <figcaption class="caption" id="Figcaption26" runat="server">9091155275</figcaption>
                     </div>                    
                </div>
                <div class="row">
                    <div class="column">
                    <img class="resize" src="Team/Joy.jpg" style=" border-radius:50%" />
                     <figcaption class="caption" id="Figcaption27" runat="server">Joy Das(3rd year member)</figcaption>
                     <figcaption class="caption" id="Figcaption28" runat="server">8337825445</figcaption>
                   </div>
                                       
                </div>
                <asp:LinkButton ID="linkbutton1" runat="server" Text="Logout" class="button" Visible="false" OnClick="logout_click"></asp:LinkButton>
            </form>
		</div>
            
            <div class="footer">
                <div class="copyright">
Copyright ©<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved.
</div>
            <a href="https://www.facebook.com/convolution.juee/" target="_blank" class="fa fa-facebook"></a>&nbsp;&nbsp;
            <a href="https://www.youtube.com/channel/UCbI4IciS6qVrTVI_msSFL9g" target="_blank" class="fa fa-youtube"></a>&nbsp;&nbsp;
            <a href="https://www.instagram.com/convolution.juee/" target="_blank" class="fa fa-instagram"></a>
            <div class="copyright1">
                For Emergency Contact :Taritra Saha: 8017961897 / Abhirup Saha: 8013561614
            </div>
            </div>
        <div class="bp-header__main">
		<a  href="Login.aspx" data-info="previous Blueprint" class="button" runat="server" id="login"><span>Login/Sign up</span></a>
            
		</div>
	</div>
     <script src="js/classie.js"></script>
	<script src="js/dummydata.js"></script>
	<script src="js/main.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#Datalist1').footable();
        });
</script>
	<script>
	    (function () {
	        var menuEl = document.getElementById('ml-menu'),
                mlmenu = new MLMenu(menuEl, {
                    // breadcrumbsCtrl : true, // show breadcrumbs
                    // initialBreadcrumb : 'all', // initial breadcrumb text
                    backCtrl: false, // show back button
                    // itemsDelayInterval : 60, // delay between each menu item sliding animation
                    onItemClick: loadDummyData // callback: item that doesn´t have a submenu gets clicked - onItemClick([event], [inner HTML of the clicked item])
                });

	        // mobile menu toggle
	        var openMenuCtrl = document.querySelector('.action--open'),
                closeMenuCtrl = document.querySelector('.action--close');

	        openMenuCtrl.addEventListener('click', openMenu);
	        closeMenuCtrl.addEventListener('click', closeMenu);

	        function openMenu() {
	            classie.add(menuEl, 'menu--open');
	            closeMenuCtrl.focus();
	        }

	        function closeMenu() {
	            classie.remove(menuEl, 'menu--open');
	            openMenuCtrl.focus();
	        }

	        // simulate grid content loading
	        var gridWrapper = document.querySelector('.content');

	        function loadDummyData(ev, itemName) {
	            ev.preventDefault();

	            closeMenu();
	            gridWrapper.innerHTML = '';
	            classie.add(gridWrapper, 'content--loading');
	            var url = itemName + ".aspx";
	            url = url.replace(/\s/g, "");
	            window.location.href = url;
	            setTimeout(function () {
	                classie.remove(gridWrapper, 'content--loading');
	                gridWrapper.innerHTML = '<ul class="products">' + dummyData[itemName] + '<ul>';
	            }, 700);
	        }
	    })();
	</script>
    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 4000); // Change image every 2 seconds
        }
</script>
    <script type="text/javascript">
        $(function () {
            // Vars
            var pointsA = [],
              pointsB = [],
              $canvas = null,
              canvas = null,
              context = null,
              vars = null,
              points = 8,
              viscosity = 20,
              mouseDist = 70,
              damping = 0.05,
              showIndicators = false;
            (mouseX = 0),
              (mouseY = 0),
              (relMouseX = 0),
              (relMouseY = 0),
              (mouseLastX = 0),
              (mouseLastY = 0),
              (mouseDirectionX = 0),
              (mouseDirectionY = 0),
              (mouseSpeedX = 0),
              (mouseSpeedY = 0);

            /**
             * Get mouse direction
             */
            function mouseDirection(e) {
                if (mouseX < e.pageX) mouseDirectionX = 1;
                else if (mouseX > e.pageX) mouseDirectionX = -1;
                else mouseDirectionX = 0;

                if (mouseY < e.pageY) mouseDirectionY = 1;
                else if (mouseY > e.pageY) mouseDirectionY = -1;
                else mouseDirectionY = 0;

                mouseX = e.pageX;
                mouseY = e.pageY;

                relMouseX = mouseX - $canvas.offset().left;
                relMouseY = mouseY - $canvas.offset().top;
            }
            $(document).on("mousemove", mouseDirection);

            /**
             * Get mouse speed
             */
            function mouseSpeed() {
                mouseSpeedX = mouseX - mouseLastX;
                mouseSpeedY = mouseY - mouseLastY;

                mouseLastX = mouseX;
                mouseLastY = mouseY;

                setTimeout(mouseSpeed, 50);
            }
            mouseSpeed();

            /**
             * Init button
             */
            function initButton() {
                // Get button
                var button = $(".btn-liquid");
                var buttonWidth = button.width();
                var buttonHeight = button.height();

                // Create canvas
                $canvas = $("<canvas></canvas>");
                button.append($canvas);

                canvas = $canvas.get(0);
                canvas.width = buttonWidth + 100;
                canvas.height = buttonHeight + 100;
                context = canvas.getContext("2d");

                // Add points

                var x = buttonHeight / 2;
                for (var j = 1; j < points; j++) {
                    addPoints(x + (buttonWidth - buttonHeight) / points * j, 0);
                }
                addPoints(buttonWidth - buttonHeight / 5, 0);
                addPoints(buttonWidth + buttonHeight / 10, buttonHeight / 2);
                addPoints(buttonWidth - buttonHeight / 5, buttonHeight);
                for (var j = points - 1; j > 0; j--) {
                    addPoints(x + (buttonWidth - buttonHeight) / points * j, buttonHeight);
                }
                addPoints(buttonHeight / 5, buttonHeight);

                addPoints(-buttonHeight / 10, buttonHeight / 2);
                addPoints(buttonHeight / 5, 0);
                // addPoints(x, 0);
                // addPoints(0, buttonHeight/2);

                // addPoints(0, buttonHeight/2);
                // addPoints(buttonHeight/4, 0);

                // Start render
                renderCanvas();
            }

            /**
             * Add points
             */
            function addPoints(x, y) {
                pointsA.push(new Point(x, y, 1));
                pointsB.push(new Point(x, y, 2));
            }

            /**
             * Point
             */
            function Point(x, y, level) {
                this.x = this.ix = 50 + x;
                this.y = this.iy = 50 + y;
                this.vx = 0;
                this.vy = 0;
                this.cx1 = 0;
                this.cy1 = 0;
                this.cx2 = 0;
                this.cy2 = 0;
                this.level = level;
            }

            Point.prototype.move = function () {
                this.vx += (this.ix - this.x) / (viscosity * this.level);
                this.vy += (this.iy - this.y) / (viscosity * this.level);

                var dx = this.ix - relMouseX,
                  dy = this.iy - relMouseY;
                var relDist = 1 - Math.sqrt(dx * dx + dy * dy) / mouseDist;

                // Move x
                if (
                  (mouseDirectionX > 0 && relMouseX > this.x) ||
                  (mouseDirectionX < 0 && relMouseX < this.x)
                ) {
                    if (relDist > 0 && relDist < 1) {
                        this.vx = mouseSpeedX / 4 * relDist;
                    }
                }
                this.vx *= 1 - damping;
                this.x += this.vx;

                // Move y
                if (
                  (mouseDirectionY > 0 && relMouseY > this.y) ||
                  (mouseDirectionY < 0 && relMouseY < this.y)
                ) {
                    if (relDist > 0 && relDist < 1) {
                        this.vy = mouseSpeedY / 4 * relDist;
                    }
                }
                this.vy *= 1 - damping;
                this.y += this.vy;
            };

            /**
             * Render canvas
             */
            function renderCanvas() {
                // rAF
                rafID = requestAnimationFrame(renderCanvas);

                // Clear scene
                context.clearRect(0, 0, $canvas.width(), $canvas.height());
                context.fillStyle = "#2a2b30";
                context.fillRect(0, 0, $canvas.width(), $canvas.height());

                // Move points
                for (var i = 0; i <= pointsA.length - 1; i++) {
                    pointsA[i].move();
                    pointsB[i].move();
                }

                // Create dynamic gradient
                var gradientX = Math.min(
                  Math.max(mouseX - $canvas.offset().left, 0),
                  $canvas.width()
                );
                var gradientY = Math.min(
                  Math.max(mouseY - $canvas.offset().top, 0),
                  $canvas.height()
                );
                var distance =
                  Math.sqrt(
                    Math.pow(gradientX - $canvas.width() / 2, 2) +
                      Math.pow(gradientY - $canvas.height() / 2, 2)
                  ) /
                  Math.sqrt(
                    Math.pow($canvas.width() / 2, 2) + Math.pow($canvas.height() / 2, 2)
                  );

                var gradient = context.createRadialGradient(
                  gradientX,
                  gradientY,
                  300 + 300 * distance,
                  gradientX,
                  gradientY,
                  0
                );
                gradient.addColorStop(0, "#102ce5");
                gradient.addColorStop(1, "#E406D6");

                // Draw shapes
                var groups = [pointsA, pointsB];

                for (var j = 0; j <= 1; j++) {
                    var points = groups[j];

                    if (j == 0) {
                        // Background style
                        context.fillStyle = "#1CE2D8";
                    } else {
                        // Foreground style
                        context.fillStyle = gradient;
                    }

                    context.beginPath();
                    context.moveTo(points[0].x, points[0].y);

                    for (var i = 0; i < points.length; i++) {
                        var p = points[i];
                        var nextP = points[i + 1];
                        var val = 30 * 0.552284749831;

                        if (nextP != undefined) {
                            // if (nextP.ix > p.ix && nextP.iy < p.iy) {
                            // 	p.cx1 = p.x;
                            // 	p.cy1 = p.y-val;
                            // 	p.cx2 = nextP.x-val;
                            // 	p.cy2 = nextP.y;
                            // } else if (nextP.ix > p.ix && nextP.iy > p.iy) {
                            // 	p.cx1 = p.x+val;
                            // 	p.cy1 = p.y;
                            // 	p.cx2 = nextP.x;
                            // 	p.cy2 = nextP.y-val;
                            // }  else if (nextP.ix < p.ix && nextP.iy > p.iy) {
                            // 	p.cx1 = p.x;
                            // 	p.cy1 = p.y+val;
                            // 	p.cx2 = nextP.x+val;
                            // 	p.cy2 = nextP.y;
                            // } else if (nextP.ix < p.ix && nextP.iy < p.iy) {
                            // 	p.cx1 = p.x-val;
                            // 	p.cy1 = p.y;
                            // 	p.cx2 = nextP.x;
                            // 	p.cy2 = nextP.y+val;
                            // } else {

                            p.cx1 = (p.x + nextP.x) / 2;
                            p.cy1 = (p.y + nextP.y) / 2;
                            p.cx2 = (p.x + nextP.x) / 2;
                            p.cy2 = (p.y + nextP.y) / 2;

                            context.bezierCurveTo(p.x, p.y, p.cx1, p.cy1, p.cx1, p.cy1);
                            // 	continue;
                            // }

                            // context.bezierCurveTo(p.cx1, p.cy1, p.cx2, p.cy2, nextP.x, nextP.y);
                        } else {
                            nextP = points[0];
                            p.cx1 = (p.x + nextP.x) / 2;
                            p.cy1 = (p.y + nextP.y) / 2;

                            context.bezierCurveTo(p.x, p.y, p.cx1, p.cy1, p.cx1, p.cy1);
                        }
                    }

                    // context.closePath();
                    context.fill();
                }

                if (showIndicators) {
                    // Draw points
                    context.fillStyle = "#000";
                    context.beginPath();
                    for (var i = 0; i < pointsA.length; i++) {
                        var p = pointsA[i];

                        context.rect(p.x - 1, p.y - 1, 2, 2);
                    }
                    context.fill();

                    // Draw controls
                    context.fillStyle = "#f00";
                    context.beginPath();
                    for (var i = 0; i < pointsA.length; i++) {
                        var p = pointsA[i];

                        context.rect(p.cx1 - 1, p.cy1 - 1, 2, 2);
                        context.rect(p.cx2 - 1, p.cy2 - 1, 2, 2);
                    }
                    context.fill();
                }
            }

            // Init
            initButton();
        });

    </script>
</body>
</html>
