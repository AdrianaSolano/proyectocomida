<%-- 
    Document   : contact.jsp
    Created on : 23-ago-2020, 22:48:15
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Comida al instante</title>

  <!-- Web-Fonts -->
  <link href="//fonts.googleapis.com/css?family=Spartan:400,500,600,700,900&display=swap" rel="stylesheet">
  <!-- //Web-Fonts -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/style-starter.css">
</head>

<body>
<!--header-->
<div class="w3l-top-header">
  <header id="site-header" class="fixed-top">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark stroke">
        <a class="navbar-brand" href="../index.jsp">
          <img src="../assets/images/10.png" alt="Your logo" title="Your logo" style="height:145px; margin: 0px; padding: 0;" />
        </a>
        <!-- if logo is image enable this   
      <a class="navbar-brand" href="#index.html">
          <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
      </a> -->
        <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
          aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
          <span class="navbar-toggler-icon fa icon-close fa-times"></span>
          </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item @@index-active">
              <a class="nav-link" href="../index.jsp">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item @@about-active">
              <a class="nav-link effect-3" href="about.jsp">Tiendas</a>
            </li>
            <li class="nav-item @@services-active">
              <a class="nav-link effect-3" href="services.jsp">Restaurantes</a>
            </li>
            <li class="nav-item @@contact-active">
              <a class="nav-link effect-3" href="contact.jsp">Conocenos</a>
            </li>
            <li class="px-4 fill-none">
              <a href="../login.jsp" class="btn btn-style btn-secondary">Iniciar Sesión</a>
              </li>
          </ul>
          <div class="popup">
            <a href="#domain" class="domain" data-toggle="modal" data-target="#DomainModal">
              <div class="hamburger1">
                <div></div>
                <div></div>
                <div></div>
              </div>
            </a>
          </div>
        </div>
      </nav>
    </div>
  </header>
</div>
<!--/header-->

<!-- Domain Modal -->
<div class="modal right fade" id="DomainModal" tabindex="-1" role="dialog" aria-labelledby="DomainModalLabel2">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
          aria-hidden="true">&times;</span></button>

      <div class="modal-body">
        <div class="modal__content">
          <h2 class="logo"> <span class="fa fa-pie-chart"></span> Comida al instante</h2>
          <!-- if logo is image enable this   
          <h2 class="logo">
            <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
          </h2> -->
          <p class="mt-md-3 mt-2">Lorem ipsum dolor sit amet, elit. Eos expedita ipsam at fugiat ab.</p>
          <img src="../assets/images/p1.jpg" alt="image" class="img-fluid radius-image mt-4">
          <div class="widget-social-icons mt-sm-5 mt-4">
            <h5 class="widget-title">Contact Us</h5>
            <ul class="icon-rounded address">
              <li>
                <p>Usme, Bogota D.C. </p>
              </li>
              <li class="mt-3">
                <p><span class="fa fa-phone"></span> <a href="tel:+404-11-22-89">+1-2345-345-678-11</a></p>
              </li>
              <li class="mt-2">
                <p><span class="fa fa-envelope"></span> <a
                    href="mailto:pizza@order.com">comidaalinstante@gmail.com</a></p>
              </li>
              <li class="top_li1 mt-2">
                <p><span class="fa fa-clock-o"></span> <a href="#url">Mon - Fri : 09:00 am to 10:00 pm
                  </a></p>
              </li>
            </ul>
          </div>
          <div class="widget-social-icons mt-sm-5 mt-4">
            <h5 class="widget-title">Follow Us</h5>
            <ul class="icon-rounded">
              <li><a class="social-link twitter" href="#url" target="_blank"><span class="fa fa-twitter"></span></a></li>
              <li><a class="social-link linkedin" href="#url" target="_blank"><span class="fa fa-linkedin"></span></a></li>
              <li><a class="social-link facebook" href="#url" target="_blank"><span class="fa fa-facebook"></span></a></li>
            </ul>
          </div>


        </div>
      </div>
    </div>
    <!-- //modal-content -->
  </div>
  <!-- //modal-dialog -->
</div>
<!-- //Domain modal -->
<section class="w3l-breadcrumb">
    <div class="container">
        <ul class="breadcrumbs-custom-path">
            <li><a href="#url">Inicio</a></li>
            <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Conocenos</li>
        </ul>
    </div>
</section>
<section class="w3l-contact-11 py-5">
    <div class="contacts-main py-lg-5 py-md-4">
      <div class="contant11-top-bg">
        <div class="container">
            <div class="title-content text-center">
                <h6 class="sub-title">Contact</h6>
                <h3 class="title-big">Get in touch with us</h3>
            </div>
          <div class="d-grid contact section-gap mt-lg-5 mt-4">
            <div class="contact-info-left d-grid text-center">
              <div class="contact-info">
                <span class="fa fa-map-marker" aria-hidden="true"></span>
                <h4>Get Directions</h4>
                <p>New York, NY-90814 Hill Station 4th Street</p>
              </div>
              <div class="contact-info">
                <span class="fa fa-phone" aria-hidden="true"></span>
                <h4>Contact Us</h4>
                <p><a href="tel:+1-2345-678-11">+1-2345-678-11</a></p>
                <p><a href="mailto:pizza@order.com" class="email">pizza@order.com</a></p>
              </div>
              <div class="contact-info">
                <span class="fa fa-clock-o" aria-hidden="true"></span>
                <h4>Opening Hours</h4>
                <p>Monday - Friday</p>
                 <p> 09:00 am to 10:00 pm</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="form-41-mian section-gap mt-5">
        <div class="container">
          <div class="d-grid align-form-map">
            <div class="form-inner-cont">
              <form action="https://sendmail.w3layouts.com/submitForm" method="post" class="signin-form">
                <div class="form-input">
                  <label for="w3lName">Nombre*</label>
                  <input type="text" name="w3lName" id="w3lName" placeholder="" />
                </div>
                <div class="form-input">
                  <label for="w3lSender">Correo*</label>
                  <input type="email" name="w3lSender" id="w3lSender" placeholder="" required="" />
                </div>
                <div class="form-input">
                  <label for="w3lMessage">Mensaje*</label>
                  <textarea placeholder="" name="w3lMessage" id="w3lMessage" required=""></textarea>
                </div>

                <button type="submit" class="btn btn-style btn-primary">Enviar</button>

              </form>
            </div>
            <div class="map">
              <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001161.424489281!2d-78.01909140705047!3d42.72866436845163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sin!4v1570786994395!5m2!1sen!2sin"
                frameborder="0" allowfullscreen=""></iframe>
            </div>
          </div>
        </div>
      </div>
  </section>
  <!-- footers 20 -->
  <section class="w3l-footers-20">
  	<div class="footers20">
  		<div class="container">
  			<div class="footers20-content">
  				<div class="d-grid grid-col-4 grids-content">
  					<div class="column">
  						<h4>Address</h4>
  						<p class="contact-para3">New York, NY-90814 Hill Station 4th Street</p>
  						<a href="mailto:hello@w3layouts.com">
  							<p class="contact-mail mt-2">pizza@order.com</p>
  						</a>
  					</div>
  					<div class="column">
  						<h4>Book a Table</h4>
  						<p>Lorem ipsum dolor sit amet, elit. Minima, enim.</p>
  						<a href="tel:+1-2345-678-11">
  							<p class="contact-phone mt-2">+1-2345-678-11</p>
  						</a>
  					</div>
  					<div class="column">
  						<h4>Opening hours</h4>
  						<p>Monday - Friday</p>
  						<p class="mt-2">09:00 am to 10:00 pm</p>
  					</div>
  					<div class="column">
  						<h4>Twitter feed</h4>
  						<a href="blog-single.html">
  							<p><span class="fa fa-twitter mr-2"></span>Eating hot spicy pizza is best thing to
  								consider</p>
  						</a>
  						<p class="small mt-2"><span class="fa fa-clock-o"></span> March 25, 2020</p>
  					</div>
  				</div>
  				<div class="d-grid grid-col-3 grids-content1 bottom-border">
  					<div class="columns copyright-grid">
  						<p class="copy-footer-29">© 2020 Pizza Pan. All rights reserved | Designed by <a
  								href="https://w3layouts.com">W3layouts</a></p>
  					</div>
  					<div class="columns text-right social-grid">
  						<ul class="social">
  							<li><a href="#url"><span class="fa fa-facebook" aria-hidden="true"></span></a></li>
  							<li><a href="#url"><span class="fa fa-instagram" aria-hidden="true"></span></a></li>
  							<li><a href="#url"><span class="fa fa-twitter" aria-hidden="true"></span></a></li>
  						</ul>
  					</div>
  				</div>
  			</div>
  		</div>
  	</div>
  </section>
  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
  	&#10548;
  </button>
  <script>
  	// When the user scrolls down 20px from the top of the document, show the button
  	window.onscroll = function () {
  		scrollFunction()
  	};

  	function scrollFunction() {
  		if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
  			document.getElementById("movetop").style.display = "block";
  		} else {
  			document.getElementById("movetop").style.display = "none";
  		}
  	}

  	// When the user clicks on the button, scroll to the top of the document
  	function topFunction() {
  		document.body.scrollTop = 0;
  		document.documentElement.scrollTop = 0;
  	}
  </script>
  <!-- /move top -->
  </section>

  <!-- jQuery and Bootstrap JS -->
  <script src="../assets/js/jquery-3.3.1.min.js"></script>

  <!-- libhtbox -->
  <script src="../assets/js/lightbox-plus-jquery.min.js"></script>


  <script src="../assets/js/jquery.magnific-popup.min.js"></script>

  <script src="../assets/js/counter.js"></script>
  <script>
  	$(document).ready(function () {
  		$('.popup-with-zoom-anim').magnificPopup({
  			type: 'inline',

  			fixedContentPos: false,
  			fixedBgPos: true,

  			overflowY: 'auto',

  			closeBtnInside: true,
  			preloader: false,

  			midClick: true,
  			removalDelay: 300,
  			mainClass: 'my-mfp-zoom-in'
  		});

  		$('.popup-with-move-anim').magnificPopup({
  			type: 'inline',

  			fixedContentPos: false,
  			fixedBgPos: true,

  			overflowY: 'auto',

  			closeBtnInside: true,
  			preloader: false,

  			midClick: true,
  			removalDelay: 300,
  			mainClass: 'my-mfp-slide-bottom'
  		});
  	});
  </script>

  <!-- testimonials owlcarousel -->
  <script src="../assets/js/owl.carousel.js"></script>
  <script>
  	$(document).ready(function () {
  		$('.owl-two').owlCarousel({
  			loop: true,
  			margin: 30,
  			nav: false,
  			responsiveClass: true,
  			autoplay: false,
  			autoplayTimeout: 5000,
  			autoplaySpeed: 1000,
  			autoplayHoverPause: false,
  			responsive: {
  				0: {
  					items: 1,
  					nav: false
  				},
  				480: {
  					items: 1,
  					nav: false
  				},
  				667: {
  					items: 1,
  					nav: false
  				},
  				1000: {
  					items: 1,
  					nav: false
  				}
  			}
  		})
  	})
  </script>
  <!-- //script for Testimonials-->

  <!-- script for food-->
  <script>
  	$(document).ready(function () {
  		$('.owl-carousel').owlCarousel({
  			loop: true,
  			margin: 0,
  			responsiveClass: true,
  			responsive: {
  				0: {
  					items: 1,
  					nav: true
  				},
  				480: {
  					items: 2,
  					nav: true,
  					margin: 20
  				},
  				769: {
  					items: 3,
  					nav: true,
  					margin: 20
  				},
  				1280: {
  					items: 4,
  					nav: true,
  					loop: true,
  					margin: 25
  				}
  			}
  		})
  	})
  </script>
  <!-- //script for food-->

  <!-- disable body scroll which navbar is in active -->
  <script>
  	$(function () {
  		$('.navbar-toggler').click(function () {
  			$('body').toggleClass('noscroll');
  		})
  	});
  </script>
  <!-- disable body scroll which navbar is in active -->
  <!--/MENU-JS-->
  <script>
  	$(window).on("scroll", function () {
  		var scroll = $(window).scrollTop();

  		if (scroll >= 80) {
  			$("#site-header").addClass("nav-fixed");
  		} else {
  			$("#site-header").removeClass("nav-fixed");
  		}
  	});

  	//Main navigation Active Class Add Remove
  	$(".navbar-toggler").on("click", function () {
  		$("header").toggleClass("active");
  	});
  	$(document).on("ready", function () {
  		if ($(window).width() > 991) {
  			$("header").removeClass("active");
  		}
  		$(window).on("resize", function () {
  			if ($(window).width() > 991) {
  				$("header").removeClass("active");
  			}
  		});
  	});
  </script>
  <!--//MENU-JS-->
  <script src="../assets/js/bootstrap.min.js"></script>

  </body>

  </html>
