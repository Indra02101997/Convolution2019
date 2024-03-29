﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeMail.aspx.cs" Inherits="Convo19Admin_HomeMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Mail Service</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/fonts/iconic/css/material-design-iconic-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/vendor/animate/animate.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/vendor/noui/nouislider.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Mail/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="Mail/css/main.css"/>
<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" id="form1" runat="server">
				<span class="contact100-form-title">
					Mail Service
				</span>

                <div class="wrap-input100 input100-select bg1">
					<span class="label-input100">Choose Mail Recipients</span>
					<div>
						<select class="js-select2" name="service" id="service" runat="server">
							<option value="All" runat="server">All</option>
							<option value="Circuistic" runat="server">Circuistic</option>
                            <option value="Algomaniac" runat="server">Algomaniac</option>
                            <option value="Decisia" runat="server">Decisia</option>
                            <option value="Papier" runat="server">Papier</option>
                            <option value="Sparkhack" runat="server">Sparkhack</option>
                            <option value="Inquizzitive" runat="server">Inquizzitive</option>
                            <option value="Techhunt" runat="server">Techhunt</option>
                            <option value="Aboltabol" runat="server">Aboltabol</option>
                            <option value="PD" runat="server">PD</option>
                            <option value="Photography" runat="server">Photography</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				
                <div class="wrap-input100 validate-input bg0 rs1-alert-validate" >
					<span class="label-input100">Subject</span>
					<input type="text" class="input100" name="Subject" id="Subject" runat="server" placeholder="Subject"/>
				</div>

				<div class="wrap-input100 validate-input bg0 rs1-alert-validate" data-validate = "Please Type Your Message">
					<span class="label-input100">Message</span>
					<textarea class="input100" name="message" id="message" runat="server" placeholder="Your message here..."></textarea>
				</div>
	 
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" id="submit" runat="server" onserverclick="button1_click">
						<span>
							Send
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>



<!--===============================================================================================-->
	<script src="Mail/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Mail/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Mail/vendor/bootstrap/js/popper.js"></script>
	<script src="Mail/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Mail/vendor/select2/select2.min.js"></script>
	<script>
	    $(".js-select2").each(function () {
	        $(this).select2({
	            minimumResultsForSearch: 20,
	            dropdownParent: $(this).next('.dropDownSelect2')
	        });


	        $(".js-select2").each(function () {
	            $(this).on('select2:close', function (e) {
	                if ($(this).val() == "Please chooses") {
	                    $('.js-show-service').slideUp();
	                }
	                else {
	                    $('.js-show-service').slideUp();
	                    $('.js-show-service').slideDown();
	                }
	            });
	        });
	    })
	</script>
<!--===============================================================================================-->
	<script src="Mail/vendor/daterangepicker/moment.min.js"></script>
	<script src="Mail/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Mail/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Mail/vendor/noui/nouislider.min.js"></script>
	<script>
	    var filterBar = document.getElementById('filter-bar');

	    noUiSlider.create(filterBar, {
	        start: [1500, 3900],
	        connect: true,
	        range: {
	            'min': 1500,
	            'max': 7500
	        }
	    });

	    var skipValues = [
	    document.getElementById('value-lower'),
	    document.getElementById('value-upper')
	    ];

	    filterBar.noUiSlider.on('update', function (values, handle) {
	        skipValues[handle].innerHTML = Math.round(values[handle]);
	        $('.contact100-form-range-value input[name="from-value"]').val($('#value-lower').html());
	        $('.contact100-form-range-value input[name="to-value"]').val($('#value-upper').html());
	    });
	</script>
<!--===============================================================================================-->
	<script src="Mail/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
