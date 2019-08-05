<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content="Convolution: Convolution 2019 is the sixth edition of the annual techno-management meet
organized by the JUEE Students Forum at the Department of Electrical
Engineering, Jadavpur University. Aimed at providing a dynamic hotspot
to students pursuing STEM-related programs, where they can put
their skills to practice and test their mettle against the best. Convolution
acts as an umbrella event comprising several student interaction
events, technical competitions, workshops and has also hosted, in the
past, lectures by some of the most illustrious names in academia and
industries alike."/>
  <meta name="author" content=""/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Convolution 2019</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet"/>

  <!-- Custom styles for this template -->
  <link href="css/one-page-wonder.min.css" rel="stylesheet"/>
  <style type="text/css">

 /** Button Style **/
.button {
  /** Font Style **/
   font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
  text-transform:uppercase;
  font-size:14px;
	color:black;
  text-decoration:none;
	font-weight:bold;
	text-transform:uppercase;
	text-shadow:rgba(0, 0, 0, 0.30) 0 -1.25px 0;
    opacity:0.90;
	position:fixed;top:1%;right:2%;
		  z-index:1;
  
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
	background-color:white;
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
          border-color: #083559;
          -webkit-box-shadow: rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;
          -moz-box-shadow: rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;
          box-shadow: rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;
      }
      .logo {
          margin-left:50vh;
          border-radius:50%;
      }
      @media screen and (max-width: 650px) and (min-width:200px) {
          .logo {
              margin-left:0;
              border-radius:50%;
          }
      }
      @media screen and (max-width: 1024px) and (min-width:700px) {
          .logo {
              margin-left:18vh;
              border-radius:50%;
          }
      }
</style>
  <style type="text/css">   
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
}
.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
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

<body style="background-color:#212529;color:#fff;opacity:0.80;">

  <!-- Navigation -->


  <header class="masthead text-center text-white"; style="padding-top:0; background-color:white; margin-right:0;">
  <div style="">
      <img src="img/fgif.gif"; style="height:auto;max-width:100%;z-index:1;" />
  </div>
  </header>

    <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 order-lg-2">
          <div class="p-5">
            <img id="lblPageName" class="img-fluid rounded-circle" src="Images/fl.jpg" alt=""/>
          </div>
        </div>
        <div class="col-lg-6 order-lg-1">
          <div class="p-5">
            <h2 class="display-4">Convolution</h2>
            <p>
Convolution 2019 is the sixth edition of the annual techno-management meet
organized by the JUEE Students Forum at the Department of Electrical
Engineering, Jadavpur University. Aimed at providing a dynamic hotspot
to students pursuing STEM-related programs, where they can put
their skills to practice and test their mettle against the best. Convolution
acts as an umbrella event comprising several student interaction
events, technical competitions, workshops and has also hosted, in the
past, lectures by some of the most illustrious names in academia and
industries alike.
.</p>
			
		  </div>
        </div>
      </div>
    </div>
  </section>
  
     <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6">
          <div class="p-5">
			  <a href="/IOT.aspx"><img class="img-fluid rounded-circle" src="Images/worksshop.jpg" alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="p-5">
            <h2 class="display-4">IOT Workshop</h2>
            <p>Wouldn't it be absolutely ingenious if you had a smart air conditioner that could cool down your room to the to the perfect temperature when you
                        return home on a hot summer day? JUEE Students Forum welcomes you to the world of IOT with a 2 day workshop , "AN INTRODUCTION TO THE DEVELOPMENT OF EMBEDDED SYSTEMS AND IOT USING ARDUINO UNO".</p>
			<a href="/IOT.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>
    <a  href="Login.aspx" data-info="previous Blueprint" class="button" runat="server" id="login"><span>Login/Sign up</span></a>
    <form id="form1" runat="server">
    <asp:LinkButton ID="linkbutton1" runat="server" Text="Logout" class="button" Visible="false" OnClick="logout_click"></asp:LinkButton>
    </form>
        <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 order-lg-2">
          <div class="p-5">
			  <a href="/Circuistic.aspx"><img class="img-fluid rounded-circle" src="Images/circuistic.jpg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6 order-lg-1">
          <div class="p-5">
            <h2 class="display-4">Circuistic</h2>
            <p>Electronic circuits power the world today. For those who enjoy designing circuits to solve real
life problems, this is their stage. Innovation and research are what we are looking for in this
circuit-building challenge.</p>
			<a href="/Circuistic.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>

  <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6">
          <div class="p-5">
			  <a href="/Sparkhack.aspx"><img class="img-fluid rounded-circle" src="Images/sparkhack.JPG"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="p-5">
            <h2 class="display-4">SparkHack</h2>
            <p>SparkHack is a hackathon focussing on technological entrepreneurship ideas based on the specified theme with some positive
                        social impact where teams embark on a 3 day long creative joyride where they build a prototype of their product</p>
				<a href="/Sparkhack.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		 </div>
        </div>
      </div>
    </div>
  </section>

  <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 order-lg-2">
          <div class="p-5">
			  <a href="/Algomaniac.aspx"><img class="img-fluid rounded-circle" src="Images/algo.jpg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6 order-lg-1">
          <div class="p-5">
            <h2 class="display-4">Algomaniac</h2>
            <p>An event exclusively for those who wish to tackle the most confounding challenges with their
prowess on a keyboard typing lines of code, Algomaniac is the coding event of Convolution19.
Intuitive thinking and a relentless knack in problem solving is what we uncover through this
event.</p>
          <a href="/Algomaniac.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>

   <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 ">
          <div class="p-5">
			  <a href="/Papier.aspx"><img class="img-fluid rounded-circle" src="Images/papier.jpg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6 ">
          <div class="p-5">
            <h2 class="display-4">Papier</h2>
            <p>For all the students and professionals hoping to channel their originally developed ideas onto a
paper and put it across an audience that can discuss and deliberate over it, Papier, the paper
presentation event of Convolution is the perfect platform.</p>
          <a href="/Papier.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>
  
  <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 order-lg-2">
          <div class="p-5">
			  <a href="/Decisia.aspx"><img class="img-fluid rounded-circle" src="Images/decisia.jpg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6 order-lg-1">
          <div class="p-5">
            <h2 class="display-4">Decisia</h2>
            <p>The right decision at the right moment is the key to success. Here is the opportunity for a
real-time experience of complex situations and their varied solutions. Participants can realize
how decision making can get them into a convoluted corporate path!</p>
          <a href="/Decisia.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>
  
  <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6">
          <div class="p-5">
			  <a href="/Inquizzitive.aspx"><img class="img-fluid rounded-circle" src="Images/image1.jpeg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6 ">
          <div class="p-5">
            <h2 class="display-4">Inquizzitive</h2>
            <p>All those facts and knowledge one collects from the classroom, every little bit of information one
learns from paying attention to the world, it&apos;s time for them to use it against the best brains in the
field.</p>
          <a href="/Inquizzitive.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>
  
   <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 order-lg-2">
          <div class="p-5">
			  <a href="/TechHunt.aspx"><img class="img-fluid rounded-circle" src="Images/img1.jpg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6 order-lg-1">
          <div class="p-5">
            <h2 class="display-4">Tech-Hunt</h2>
            <p>"All his life, Klaus had believed that if you had read enough books, you could solve any problem, but now he
                wasn't so sure"- A Series of Unfortunate Events. We bring Tech Hunt, a Circuitry and Logic Based Competition where a 
                participant doesn't build circuits but deconstructs them, finds out what is ailing them, and suggests modifications using prior
                knowledge of circuit theory, electronics and a good measure of logical thinking.The event promises to test both reasoning and technical
                know-how of enthusiasts.
            </p>
          <a href="/TechHunt.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>
  
  <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6">
          <div class="p-5">
			  <a href="/AbolTabol.aspx"><img class="img-fluid rounded-circle" src="Images/img1.jpeg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="p-5">
            <h2 class="display-4">Abol Tabol</h2>
            <p>Taking a cue from BAHFest (The Festival of Bad Ad Hoc Hypotheses), this year we introduce our
very own version of bringing together absolutely fictitious scientific theories justified by well
thought-out and convincingly researched reasoning, before a panel of judges. This event shall
be a hilarious exercise in how one can induce scientific fervor into hypotheses that have zero
truth in them and were perhaps just sketched out on a whim!</p>
          <a href="/AbolTabol.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>
  
  <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 order-lg-2">
          <div class="p-5">
			  <a href="/PD.aspx"><img class="img-fluid rounded-circle" src="Images/pd.jpeg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6 order-lg-1">
          <div class="p-5">
            <h2 class="display-4">'Welcome to The Machine' - A Panel Discussion</h2>
            <p>Convolution's sixth edition shall witness an interdisciplinary talk on a plethora of vivid yet related 
                fields ranging from artificial intelligence to international relations, neuro-linguistics to engineering and labour disparity to mass
                mobilisation, in an attempt to project the socio-economic reverbations of increased automation, and demystify the supposed symbiosis that machines and humans
                have been sharing for so long. Come listen to a renowned and diverse panel deliberate on a question of ever increasing significance.
            </p>
          <a href="/PD.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>
  
  <section>
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6">
          <div class="p-5">
			  <a href="/24Frames.aspx"><img class="img-fluid rounded-circle" src="Images/photo.jpeg"  alt=""/></a>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="p-5">
            <h2 class="display-4">24 Frames</h2>
            <p>&quot;It is the artist who tells the truth and photography which lies,&quot; the sculptor August Rodin opined,
&quot;For in reality, time does not stand still.&quot; Abbas Kiarostami&apos;s last masterpiece, the sublime &quot;24
Frames&quot;, a collection of four and a half minute vignettes of 24 images, portraying the life of a
photograph, what transpires before and after an image is captured, is an able antithesis to what
Rodin said, because it proves that it is only in stillness, that an artist may encapsulate
movement . This Convolution, we unveil our very own photography exhibition &quot;24 Frames &quot;,
named after Kiarostami&apos;s poetic farewell, to bring to fore all the camera-wielding enthusiasts,
the ones who could meander through the forgotten streets of a city only to lend a kaleidoscopic
eye to all its dimensions.</p>
          <a href="/24Frames.aspx" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
		  </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Footer -->
  <footer class="py-5 bg-black">
    <div class="container" style="text-align:center;">
      <p class="m-0 text-center text-white small">Copyright &copy; 2019 All rights reserved</p>
	    <a href="https://www.facebook.com/convolution.juee/" target="_blank" class="fa fa-facebook"></a>&nbsp;&nbsp;
            <a href="https://www.youtube.com/channel/UCbI4IciS6qVrTVI_msSFL9g" target="_blank" class="fa fa-youtube"></a>&nbsp;&nbsp;
            <a href="https://www.instagram.com/convolution.juee/" target="_blank" class="fa fa-instagram"></a>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
