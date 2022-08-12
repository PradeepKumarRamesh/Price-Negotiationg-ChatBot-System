﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainPage.aspx.cs" Inherits="mainPage" %>

<!DOCTYPE html>
<html lang="zxx">

 <head>
       
	<title>Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website</title>
		<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Owl-carousel-CSS -->
        <link rel="stylesheet" type="text/css" href="css/checkout.css">
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/contact.css">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
<style>
    .pwdbtn
    {
            line-height: inherit;
        margin: 1em 0 0;
            outline: none;
    padding: 15px 15px;
    font-size: 14px;
    color: #777;
    background: #f6f9fb;
    width: 100%;
    letter-spacing: 1px;
    border: none;
    border: 1px solid #ddd;
    }
</style>
</head>

<body>
    <form runat="server">
	<!-- banner -->
	<div class="banner_top" id="home">
		<div class="wrapper_top_w3layouts">

			<div class="header_agileits">
				<div class="logo">
					<h1><a class="navbar-brand" href="HomePage.aspx"><span>CHECK</span> <i>Shoes</i></a></h1>
				</div>
				<div class="overlay overlay-contentpush">
					<button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

					<nav>
						<ul>
							<li><a href="#login" class="active">Admin</a></li>
							<li><a href="#login">User</a></li>
							<li><a href="#login">Logout</a></li>
						</ul>
					</nav>
				</div>
				<div class="mobile-nav-button">
					<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
				</div>
				<!-- cart details -->
				<div class="top_nav_right">
					

				</div>
				<!-- //cart details -->
				

				<div class="clearfix"></div>
			</div>
			<!-- /slider -->
			<div class="slider">
				<div class="callbacks_container">
					<ul class="rslides callbacks callbacks1" id="slider4">

						<li>
							<div class="banner-top2">
								<div class="banner-info-wthree">
									<h3>Pradeep</h3>
									<p>See how good they feel.</p>

								</div>

							</div>
						</li>
						<li>
							<div class="banner-top3">
								<div class="banner-info-wthree">
									<h3>Kumar</h3>
									<p>For All Walks of Life.</p>

								</div>

							</div>
						</li>
						<li>
							<div class="banner-top">
								<div class="banner-info-wthree">
									<h3>Ramesh</h3>
									<p>See how good they feel.</p>

								</div>

							</div>
						</li>
						<li>
							<div class="banner-top1">
								<div class="banner-info-wthree">
									<h3>Adidas</h3>
									<p>For All Walks of Life.</p>

								</div>

							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- //slider -->
			<ul class="top_icons">
				<li><a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a></li>
				<li><a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a></li>
				<li><a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a></li>
				<li><a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a></li>

			</ul>
		</div>
	</div>

    <br /><br />

     <center>
   
       
	
	<div class="mid_slider_w3lsagile">
		<div class="col-md-3 mid_slider_text">
			<h5>Some More Shoes</h5>
		</div>
		<div class="col-md-9 mid_slider_info">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1" class=""></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
					<li data-target="#myCarousel" data-slide-to="3" class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<div class="row">
                            <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail">
                                    <a href="single.aspx?pid=<%#Eval("pid") %>">
                                        <img src="<%#Eval("image") %>" alt="Image" style="max-width:100%;">

                                    </a></div>
							</div>
                              </ItemTemplate>
                                </asp:ListView>
							
						</div>
					</div>
					<div class="item">
						<div class="row">
							 <asp:ListView ID="ListView2" runat="server">
                                <ItemTemplate>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail">
                                    <a href="single.aspx?pid=<%#Eval("pid") %>">
                                        <img src="<%#Eval("image") %>" alt="Image" style="max-width:100%;">

                                    </a></div>
							</div>
                              </ItemTemplate>
                                </asp:ListView>
						</div>
					</div>
					
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
				<!-- The Modal -->

			</div>
		</div>

		<div class="clearfix"> </div>
	</div>
	<!--//banner -->
         <asp:Panel ID="Panel1" runat="server">
          <div id="login" class="ads-grid_shop">
		<div class="shop_inner_inf">
			<h3 class="head">Login Here</h3>
            <br />
            <br />
           
			<p class="head_para">WELCOME...</p>
			<div class="inner_section_w3ls">
				<div class="col-md-12 contact_grid_right">
					<h6>Please login to access our products.</h6>
					
						<div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:TextBox ID="aid" runat="server" placeholder="Admin Id"></asp:TextBox>
							<asp:TextBox ID="apwd" runat="server" placeholder="Password" CssClass="pwdbtn" TextMode="Password"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Admin Login" OnClick="Button1_Click"></asp:Button><br /><br />
						</div>
						<div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:TextBox ID="uid" runat="server" placeholder="User Id"></asp:TextBox>
							<asp:TextBox ID="upwd" runat="server" placeholder="Password" CssClass="pwdbtn" TextMode="Password"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="User Login" OnClick="Button2_Click"></asp:Button><br /><br />
						</div>
                    </div>
                </div>
            </div>
        </div>
         </asp:Panel>
         
                 <div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<h3 class="head"><br /><br /><hr style="border:1px solid grey"/><br /><br />
                Register Here</h3>
            <br />
            <br />
           
			<p class="head_para">WELCOME...</p>
			<div class="inner_section_w3ls">
				<div class="col-md-12 contact_grid_right">
					<h6>Please register to access our products.</h6>
					
						<div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:TextBox ID="userid" runat="server" placeholder="User Id"></asp:TextBox>
							<asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
                           </div>

						<div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email!" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
							<asp:TextBox ID="cont" runat="server" placeholder="Contact No"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cont" ErrorMessage="Invalid Contact No!" ValidationExpression="[0-9]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                           </div>

                    <div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:TextBox ID="addr" runat="server" placeholder="Address"></asp:TextBox>
							
                           </div>

                     <div class="col-md-6 col-sm-6 contact_left_grid">
							<asp:TextBox ID="pwd" runat="server" placeholder="Password" CssClass="pwdbtn" TextMode="Password"></asp:TextBox>
                         
                     </div>
                    
                     <div class="col-md-6 col-sm-6 contact_left_grid">
                         <br />
							<asp:Button ID="Button3" runat="server" Text="Register"  OnClick="Button3_Click"></asp:Button> </div>
                    </div>
                </div>
            </div>
        </div>
	<!-- /newsletter-->
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<!-- //newsletter-->
	<!-- footer -->
	<div class="footer_agileinfo_w3" style="padding:0">
		<p class="copy-right-w3ls-agileits">&copy 2018 Downy Shoes. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
	
    <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- /nav -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/demo1.js"></script>
	<!-- //nav -->
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->
	<!--search-bar-->
	<script src="js/search.js"></script>
	<!--//search-bar-->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!-- js for portfolio lightbox -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->

	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

    </form>
</body>

</html>
