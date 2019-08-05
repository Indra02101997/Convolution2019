<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewTeam.aspx.cs" Inherits="Convo19Admin_ViewTeam" %>

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
   <title>View Team</title>
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
    <form id="form1" runat="server">
    <div>
        <br />
        <div style="position:relative;">
        <label class="h1">Total Registered: </label>
        <label class="h2" id="count" runat="server"></label>
        </div>
        <br />
        <br />
        <asp:DropDownList ID="Dropdown1" runat="server" Height="41px" Width="227px">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Circuistic</asp:ListItem>
            <asp:ListItem>Sparkhack</asp:ListItem>
            <asp:ListItem>Algomaniac</asp:ListItem>
            <asp:ListItem>Decisia</asp:ListItem>
            <asp:ListItem>Papier</asp:ListItem>
            <asp:ListItem>Inquizzitive</asp:ListItem>
            <asp:ListItem>Techhunt</asp:ListItem>
            <asp:ListItem>Aboltabol</asp:ListItem>
            <asp:ListItem>PD</asp:ListItem>
            <asp:ListItem>Photography</asp:ListItem>
        </asp:DropDownList>
        <asp:Button class="button" runat="server" id="A1" Text="View" OnClick="Button1_Click"></asp:Button>
        <br />
        <br />
        <asp:GridView ID="Student" runat="server" AutoGenerateColumns="false" DataKeyNames="id" CellPadding="10" BackColor="#FFFDB0" Font-Bold="False" Font-Names="Arial" Font-Size="18px" ForeColor="#000000" AllowPaging="True" PageSize="40">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" Visible="false" />
                <asp:TemplateField HeaderText="Team ID">
                    <ItemTemplate>
                        <asp:Label ID="pname" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email1">
                    <ItemTemplate>
                        <asp:Label ID="pprice" runat="server" Text='<%# Bind("Email1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email2">
                    <ItemTemplate>
                        <asp:Label ID="pprice2" runat="server" Text='<%# Bind("Email2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email3">
                    <ItemTemplate>
                        <asp:Label ID="pstock" runat="server" Text='<%# Bind("Email3") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email4">
                    <ItemTemplate>
                        <asp:Label ID="ptime" runat="server" Text='<%# Bind("Email4") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email5">
                    <ItemTemplate>
                        <asp:Label ID="pcategory" runat="server" Text='<%# Bind("Email5") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="College">
                    <ItemTemplate>
                        <asp:Label ID="pcategory" runat="server" Text='<%# Bind("College") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Year">
                    <ItemTemplate>
                        <asp:Label ID="pcategory" runat="server" Text='<%# Bind("Year") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact No">
                    <ItemTemplate>
                        <asp:Label ID="pcategory" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
            <HeaderStyle BackColor="#FFFF99" BorderStyle="None"  Font-Names="Arial" Font-Size="20px" Font-Underline="True" ForeColor="#000099" HorizontalAlign="Center" />
        </asp:GridView>
    </div>
    </form>
	<script type="text/javascript">
        function logout() {
            sessionStorage.clear();
            location.replace('/Convo19Admin/Default.aspx');
        }
    </script>
</body>
</html>
