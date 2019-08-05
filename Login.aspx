<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        @import url("https://fonts.googleapis.com/css?family=Exo|Exo+2");

* {
	margin: 0;
	padding: 0;
}

.reset {
	margin: 0;
	padding: 0;
}

body {
	margin-top: 50px;
	color: #ccc;
	font-size: 1.1em;
	font-family: "Exo", "Exo 2", sans-serif;
	background-color: #aaa;
}

.wrap {
	width: 600px;
	height: auto;
	display: block;
	text-align: center;
	margin: 0 auto;
	box-shadow: #555 8px 8px 8px;
	background-color: #222;
	padding: 100px;
	border-radius: 25px;
}

.title-paused {
	color: #ccc;
	font-size: 30px;
	letter-spacing: 1px;
	padding-bottom: 30px;
	cursor: default;
	user-select: none;
}

.title-paused:after {
	content: "";
	display: block;
	width: 60px;
	opacity: 0.2;
	border-bottom: solid 3px #ccc;
	margin: 0 auto;
	padding-top: 22px;
}

.title-play {
	color: #ccc;
	font-size: 30px;
	letter-spacing: 1px;
	padding-bottom: 30px;
	cursor: default;
	user-select: none;
}

.title-play:after {
	content: "";
	display: block;
	width: 60px;
	opacity: 0.2;
	border-bottom: solid 3px #ccc;
	margin: 0 auto;
	padding-top: 22px;
	position: relative;
	-webkit-animation-name: slash-title; /* Safari 4.0 - 8.0 */
	-webkit-animation-duration: 20s; /* Safari 4.0 - 8.0 */
	animation-name: slash-title;
	animation-duration: 10s;
	animation-iteration-count: infinite;
}

/* Safari 4.0 - 8.0 */
@-webkit-keyframes slash-title {
	0% {
		left: 0%;
	}
	25% {
		left: 200px;
	}
	50% {
		left: 200px;
	}
	75% {
		left: 0px;
	}
	100% {
		left: 0px;
	}
}
/* Standard syntax */
@keyframes slash-title {
	0% {
		left: 0px;
	}
	30% {
		opacity: 0.5;
	}
	50% {
		left: 161px;
		opacity: 0.7;
	}
	75% {
		left: -161px;
		animation: ease-in-out;
	}
	85% {
		opacity: 0.5;
	}
	100% {
		left: 0px;
		opacity: 0.2;
	}
}

.input {
	width: 60%;
	outline: none;
	border: solid 1.5px #ccc;
	border-radius: 1em;
	padding: 5px 10px 5px 10px;
	text-align: left;
	margin: 0 0 10px 0;
	font-size: 1.1em;
	color: #ccc;
	background-color: transparent !important;
}

::-webkit-input-placeholder {
	color: #ccc;
	opacity: 0.3;
	text-transform: none;
}

input:-moz-placeholder {
	color: #ccc;
	opacity: 0.3;
	text-transform: none;
}

.field {
	display: inline-block;
	padding-top: 0;
	padding-bottom: 0;
}

.field input {
	border: none;
	margin: 0;
	padding: 5px 0 5px 5px;
}

.field .input {
	text-transform: lowercase;
}

.pw {
	width: 85%;
}

.email {
	width: 90%;
}

.eye-pw {
	float: right;
	margin-top: 8px;
	cursor: pointer;
	opacity: 0.3;
}

.pull-left-icon {
	float: left;
	margin-top: 8px;
	padding-right: 10px;
	color: #ccc;
	opacity: 0.3;
	user-select: none;
	cursor: auto;
}

.captcha {
	width: 60%;
	border: solid 1.5px #ccc;
	border-radius: 1em;
	padding: 10px 10px;
	text-align: center;
	margin-bottom: 30px;
	font-size: 1em;
	color: #ccc;
	background-color: transparent !important;
}

#toggle {
	color: #ccc;
	opacity: 0.3;
	cursor: pointer;
	font-size: 30px;
}
#toggle .toggle-on {
	transform: rotate(360deg);
	margin-bottom: 20px;
}
#toggle .toggle-off {
	transform: rotate(180deg);
	margin-bottom: 20px;
}

#math {
	user-select: none;
}

.option {
	display: block;
	width: 100%;
}

.option input {
	font-size: 1em;
	background: transparent !important;
	border-bottom: #ccc solid 2px;
	outline: none;
	color: #ccc;
	text-align: center;
	width: 65px;
}

.btn {
	font-family: "Exo", "Exo 2", sans-serif;
	font-size: 1.1em;
	padding: 5px 20px;
	margin: 0 5px;
	color: #ccc;
	border: solid 2px #ccc;
	border-radius: 20px;
	background: transparent;
	outline: none;
}

.btn:hover {
	background-color: #ccc;
	color: #222;
	font-weight: bolder;
	transition: 0.5s ease;
	cursor: pointer;
}

.footer {
	margin: 30px 0 0 0;
}

.footer .account {
	color: #ccc;
	opacity: 0.5;
}

.hidden {
	display: none;
}

.show {
	display: block;
}

.click-here {
	cursor: pointer;
	color: #ccc;
	opacity: .5;
}

.click-here:hover {
	opacity: .8;
}

/* Swing Effect */
@-webkit-keyframes swing {
	15% {
		-webkit-transform: translateX(5px);
		transform: translateX(5px);
	}
	30% {
		-webkit-transform: translateX(-5px);
		transform: translateX(-5px);
	}
	50% {
		-webkit-transform: translateX(3px);
		transform: translateX(3px);
	}
	65% {
		-webkit-transform: translateX(-3px);
		transform: translateX(-3px);
	}
	80% {
		-webkit-transform: translateX(2px);
		transform: translateX(2px);
	}
	100% {
		-webkit-transform: translateX(0);
		transform: translateX(0);
	}
}
@keyframes swing {
	15% {
		-webkit-transform: translateX(5px);
		transform: translateX(5px);
	}
	30% {
		-webkit-transform: translateX(-5px);
		transform: translateX(-5px);
	}
	50% {
		-webkit-transform: translateX(3px);
		transform: translateX(3px);
	}
	65% {
		-webkit-transform: translateX(-3px);
		transform: translateX(-3px);
	}
	80% {
		-webkit-transform: translateX(2px);
		transform: translateX(2px);
	}
	100% {
		-webkit-transform: translateX(0);
		transform: translateX(0);
	}
}

.btnSwing:hover {
	-webkit-animation-name: swing; /* Safari 4.0 - 8.0 */
	animation-name: swing;
	-webkit-animation-duration:1s; /* Safari 4.0 - 8.0 */
	animation-duration: 1s;
	-webkit-animation-iteration-count: 1;
	animation-iteration-count: 2;
}

.menu {
	position: relative;
	float: right;
	top: -70px;
	right: -70px;
}

#menuIcon {
	position: relative;
	font-size: 30px;
	opacity: 0.3;
	cursor: pointer;
}

.menuOption {
	position: absolute;
	z-index: 1;
	top: 50px;
	right: 10px;
	width: auto;
	height: auto;
	background-color: #333;
	border-radius: 10px 10px 10px 10px;
	padding: 15px 15px;
	box-shadow: #555 2px 4px 4px;
	white-space: nowrap;
}

.menuOption ul li {
	list-style: none;
	line-height: 1.5em;
	user-select: none;
	text-align: right;
}

.menuOption ul li i {
	cursor: pointer;
	transform: rotate(180deg);
	opacity: .3;
}

.rectangle {
	position: absolute;
	z-index: 2;
	top: 35px;
	right: 25px;
	border-top: 15px solid transparent;
	border-right: 15px solid #333;
}

#toggleAnimation {
	transform: rotate(180deg);
	opacity: 0.3;
	margin-left: 15px;
}

.gradientBorder {
	-webkit-animation-name: gradientBorder;
	animation-duration: 5s;
	-webkit-animation-iteration-count: infinite;
	animation-name: gradientBorder;
	animation-duration: 5s ;
	animation-iteration-count: infinite;
}

@-webkit-keyframes gradientBorder {
	15% {
		border-color: linear-gradient(to bottom right , #009FFF, #11998e);
	}
	30% {
		border-color: linear-gradient(to bottom right , #38ef7d, #96c93d);
	}
	50% {
		border-color: linear-gradient(to bottom right , #CAC531, #F3F9A7);
	}
	65% {
		border-color: linear-gradient(to bottom right , #f7b733, #fc4a1a);
	}
	80% {
		border-color: linear-gradient(to bottom right , #ee0979, #ff00cc);
	}
	100% {
		border-color: linear-gradient(to bottom right , #333399, #0052D4);
	}
}

@keyframes gradientBorder {
	15% {
		border-color: linear-gradient(to bottom right , #009FFF, #11998e);
	}
	30% {
		border-color: linear-gradient(to bottom right , #38ef7d, #96c93d);
	}
	50% {
		border-color: linear-gradient(to bottom right , #CAC531, #F3F9A7);
	}
	65% {
		border-color: linear-gradient(to bottom right , #f7b733, #fc4a1a;
	}
	80% {
		border-color: linear-gradient(to bottom right , #ee0979, #ff00cc);
	}
	100% {
		border-color: linear-gradient(to bottom right , #333399, #0052D4);
	}
}

    </style>
<script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("You have been successfully Registered. Now Login with your email and passsword")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
<script type="text/javascript">
    // Show Password
    var pw = document.getElementById("pw");

    var eye = document.getElementById("eye-pw");

    eye.addEventListener("click", eyeShow);

    function eyeShow() {
        if (pw.getAttribute("type") == "text") {
            pw.setAttribute("type", "password");
            eye.style.opacity = ".3";
            eye.setAttribute("class", "far fa-eye eye-pw");
        } else {
            pw.setAttribute("type", "text");
            eye.style.opacity = "1";
            eye.setAttribute("class", "far fa-eye-slash eye-pw");
        }
    }

    // Focus E-mail and Password
    var pwDiv = document.getElementById("pwDiv");
    var pwIcon = document.getElementById("pwIcon");
    var eDiv = document.getElementById("eDiv");
    var eIcon = document.getElementById("eIcon");

    eDiv.addEventListener("click", eFocus);
    function eFocus() {
        var email = document.getElementById("email");
        email.focus();
        eIcon.style.opacity = "1";
    }
    pwDiv.addEventListener("click", pwFocus);
    function pwFocus() {
        var pw = document.getElementById("pw");
        pw.focus();
        pwIcon.style.opacity = "1";
    }

    function onMouseOutpwIcon() {
        pwIcon.style.opacity = 0.3;
    }
    function onMouseOuteIcon() {
        eIcon.style.opacity = 0.3;
    }

    function onMouseOverpwIcon() {
        pwIcon.style.opacity = 1;
    }
    function onMouseOvereIcon() {
        eIcon.style.opacity = 1;
    }

    // Toogle Click Math
    var toggle = document.getElementById("toggle");
    var toggleIcon = document.getElementById("toggleIcon");

    // Math Captcha
    var math = document.getElementById("math");
    var calc = document.getElementById("calc");
    var result = 0;
    // Numbers
    toggle.addEventListener("click", toggleFunction);
    function toggleFunction() {
        if (toggle.value == 1) {
            // Numbers
            v1 = Math.floor(Math.random() * 10);
            v2 = Math.floor(Math.random() * 10);
            result = v1 + v2;
            math.innerHTML = v1 + " + " + v2;
            //alert(v1 + ' + ' + v2 + ' = ' + result);
            toggleIcon.setAttribute("class", "fas fa-toggle-on toggle-off");
            toggle.style.opacity = ".3";
            toggle.value = 0;
        } else {
            // Numbers
            var v1 = Math.floor(Math.random() * 10);
            var v2 = Math.floor(Math.random() * 10);
            result = v1 * v2;
            math.innerHTML = v1 + " * " + v2;
            //alert(v1 + ' * ' + v2 + ' = ' + result);
            toggleIcon.setAttribute("class", "fas fa-toggle-on toggle-on");
            toggle.style.opacity = "1";
            toggle.value = 1;
        }
    }

    function calcMath() {
        if (calc.value == result) {
            btnSI.removeAttribute("disabled");
            calc.style.borderColor = "#ccc";
        } else {
            btnSI.setAttribute("disabled", "disabled");
            calc.style.borderColor = "#f00";
        }
    }

    // Disabled button sign in
    var btnSI = document.getElementById("btnSignIn");

    function btnDisabled() {
        if (calc.value == "") {
            btnSI.setAttribute("disabled", "disabled");
        } else {
            btnSI.setAttribute("disabled", "none");
        }
    }

    // Menu
    var menu = document.getElementById("menu");
    var menuIcon = document.getElementById("menuIcon");

    menuIcon.addEventListener("click", alterMenuIcon);

    var form = document.getElementById("form");

    function alterMenuIcon() {
        if (menu.getAttribute("class") == "hidden") {
            menu.setAttribute("class", "show");
            menuIcon.style.opacity = 0.8;
            form.style.opacity = 0.6;
        } else {
            menu.setAttribute("class", "hidden");
            menuIcon.style.opacity = 0.3;
            form.style.opacity = 1;
        }
    }

    // Title Animation
    var toggleAnimation1 = document.getElementById("toggleAnimation1");

    var titleAnimation = document.getElementById("title");

    toggleAnimation1.addEventListener("click", function () {
        if (titleAnimation.getAttribute("class") == "title-play") {
            titleAnimation.setAttribute("class", "title-paused");
            toggleAnimation1.style.transform = "rotate(180deg)";
            toggleAnimation1.style.opacity = ".3";
        } else {
            titleAnimation.setAttribute("class", "title-play");
            toggleAnimation1.style.transform = "rotate(360deg)";
            toggleAnimation1.style.opacity = "1";
        }
    });

</script>
</head>
<body onload="btnDisabled()">

	<div class="wrap" runat="server">

		<div class="menu" runat="server">
			<i id="menuIcon" runat="server" class="fas fa-bars"></i>
			<div id="menu" class="hidden" runat="server">
				<div class="rectangle" runat="server"></div>
				<div id="menuOption" class="menuOption" runat="server">
					<ul runat="server">
						<li runat="server">Separator Effect
							<i runat="server" id="toggleAnimation1" class="fas fa-toggle-on"></i>
						</li>
						<li runat="server">Edge Effect
							<i runat="server" id="toggleAnimation2" class="fas fa-toggle-on"></i>
						</li>
						<li runat="server">Theme
							<i runat="server" id="toggleAnimation3" class="fas fa-toggle-on"></i>
						</li>
					</ul>
				</div>
			</div>

		</div>
		<!-- /menu -->

		<form id="form1" runat="server">

			<h2 id="title" class="title-paused">Login Here !!!</h2>

			<!-- E-mail -->
			<div id="eDiv" class="field input" onmouseover="onMouseOvereIcon()" onmouseout="onMouseOuteIcon()">
				<i id="eIcon" class="far fa-envelope pull-left-icon"></i>
				<input id="email" runat="server" type="text" class="input email" placeholder="E-mail" maxlength="50" required="required"/>
			</div>

			<!-- Password -->
			<div id="pwDiv"	class="field input" onmouseover="onMouseOverpwIcon()" onmouseout="onMouseOutpwIcon()">
				<i id="pwIcon" class="fas fa-lock pull-left-icon"></i>
				<input id="pw" runat="server" type="password" class="input pw" placeholder="Password"  maxlength="50" required="required"/>
				<i id="eye-pw" class="far fa-eye eye-pw"></i>
			</div>


			<!-- Buttons -->
			<div class="buttons">
				<asp:Button ID="btn1" runat="server" class="btn signup" Text="Login" OnClick="btn1_Click"></asp:Button>
			</div>

			<!-- Footer -->
			<div class="footer">
				<span class="account">Don't have an account yet?</span> <span class="click-here"><a href="Register.aspx" class="click-here">Click here!</a></span>
			</div>

		</form>
		<!-- /form -->

	</div>
	<!-- /wrap -->
</body>
</html>
