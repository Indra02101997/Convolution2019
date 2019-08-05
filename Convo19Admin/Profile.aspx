<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Convo19Admin_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta charset='utf-8'/>
   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
   <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <link rel="stylesheet" href="styles.css"/>
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Update Profile</title>
    <style type="text/css">
        .h1 {
            color: #ff4a56;
            font-weight: 100;
            letter-spacing: 0.01em;
            margin-left: 15px;
            margin-bottom: 35px;
            text-transform: uppercase;
            font-size:25px;
        }
        .h2 {
            color: #ff4a56;
            font-weight: 100;
            letter-spacing: 0.01em;
            margin-left: 1px;
            margin-bottom: 35px;
            text-transform: uppercase;
            font-size:25px;
        }
        .button {
            /** Font Style **/
            cursor:pointer;
            font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
            text-transform: uppercase;
            font-size: 14px;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            text-transform: uppercase;
            text-shadow: rgba(0, 0, 0, 0.30) 0 -1.25px 0;
            margin-left:60px;
            /** Button Style **/
            display: -moz-inline-stack;
            -webkit-font-smoothing: antialiased;
            display: inline-block;
            vertical-align: middle;
            vertical-align: auto;
            zoom: 1;
            margin-top: 10px;
            margin-bottom: 10px;
            border: 1px solid #13619f;
            background: #2371b7;
            padding: 11px 20px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            -ms-border-radius: 3px;
            -o-border-radius: 3px;
            border-radius: 3px;
            -webkit-box-shadow: rgba(255, 255, 255, 0.3) 0 1px 0, inset rgba(255, 255, 255, 0.3) 0 1px 0;
            -moz-box-shadow: rgba(255, 255, 255, 0.3) 0 1px 0, inset rgba(255, 255, 255, 0.3) 0 1px 0;
            box-shadow: rgba(255, 255, 255, 0.3) 0 1px 0, inset rgba(255, 255, 255, 0.3) 0 1px 0;
            border-radius: 25px;
        }

/** Active State Style **/
        .button:active {
            border-color: #083559;
            -webkit-box-shadow: rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;
            -moz-box-shadow: rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;
            box-shadow: rgba(255, 255, 255, 0.2) 0 1px 0, inset rgba(0, 0, 0, 0.25) 0 1px 4px;
        }
        .datalist {
            width:100%;
            max-width:100%;
            height:auto;
            margin-left:300px;
        }
        .img1 {
            font-family:Arial;
            font-size:20px;
            background-color:yellow;
            font-weight:bold;
            color:aliceblue;
            cursor:pointer;
        }
        .label {
            padding: 10px;
            color: #000000;
            font-weight: bold;
            display: inline-block;
            width: 100px;
        }
        .text {
            width: 250px;
            height: 20px;
            border-radius: 4px;
            border: 1px solid #999999;
            font-size: 18px;
            padding: 10px;
            color: #000000;
        }
        @media screen and (max-width: 650px) and (min-width:200px) {
            .datalist {
                width: 100%;
                max-width: 100%;
                height: auto;
                margin-left:-1vh;
            }
            .h1 {
                font-size:12px;
            }
            .h2 {
                font-size:12px;
            }
        }
        @media screen and (max-width: 1024px) and (min-width:660px) {
            .datalist {
                width: 100%;
                max-width: 100%;
                height: auto;
                margin-left:auto;
            }
        }
    </style>
</head>
<body>
<div id='cssmenu'>
<ul>
   <li class='active'><a href='/Convo19Admin/Home.aspx'><span>Home</span></a></li>
   <li class='has-sub'><a href='#'><span>Events</span></a>
      <ul>
         <li><a href='/Convo19Admin/Circuistic.aspx'><span>Circuistic</span></a></li>
         <li><a href='/Convo19Admin/Sparkhack.aspx'><span>SparkHack</span></a></li>
		 <li><a href='/Convo19Admin/Algomaniac.aspx'><span>Algomaniac</span></a></li>
		 <li><a href='/Convo19Admin/Decisia.aspx'><span>Decisia</span></a></li>
		 <li><a href='/Convo19Admin/Papier.aspx'><span>Papier</span></a></li>
		 <li><a href='/Convo19Admin/Inquizzitive.aspx'><span>Inquizzitive</span></a></li>
		 <li><a href='/Convo19Admin/Techhunt.aspx'><span>TechHunt</span></a></li>
		 <li><a href='/Convo19Admin/Aboltabol.aspx'><span>Abol Tabol</span></a></li>
		 <li><a href='/Convo19Admin/PD.aspx'><span>PD</span></a></li>
         <li class='last'><a href='/Convo19Admin/24Frames.aspx'><span>24 Frames</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>Profile</span></a>
       <ul>
           <li><a href="/Convo19Admin/Profile.aspx"><span>Update Profile</span></a></li>
           <li><a href="#" onclick="logout()"><span>Logout</span></a></li>
       </ul>
   </li>
</ul>
</div>
     <br />
    <br />
    <form id="form1" runat="server">
        <asp:Button class="button" runat="server" id="Button1" Text="Update" OnClick="Button1_Click"></asp:Button>
        <asp:Button class="button" runat="server" id="Button2" Text="New" OnClick="Button2_Click"></asp:Button>
		<asp:Button class="button" runat="server" id="Button3" Text="Create Team" OnClick="Button3_Click"></asp:Button>
        <asp:Button class="button" runat="server" id="Button4" Text="View Team" OnClick="Button4_Click"></asp:Button>
        </form>
	<script type="text/javascript">
        function logout() {
            sessionStorage.clear();
            location.replace('/Convo19Admin/Default.aspx');
        }
    </script>
</body>
</html>
