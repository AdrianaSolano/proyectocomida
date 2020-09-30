<%-- 
    Document   : index.jsp
    Created on : 23-ago-2020, 22:50:03
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
   <link rel="icon" type="image/png" href="assets/images/00.png">

  <title>Comida al instante</title>

  <!-- Web-Fonts -->
  <link href="//fonts.googleapis.com/css?family=Spartan:400,500,600,700,900&display=swap" rel="stylesheet">
  <!-- //Web-Fonts -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
</head>

<body>
<!-- Header -->
    <jsp:include page="menuprincipal.jsp" />  
<!-- Header -->    

<!-- Domain Modal -->
<div class="modal right fade" id="DomainModal" tabindex="-1" role="dialog" aria-labelledby="DomainModalLabel2">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
          aria-hidden="true">&times;</span></button>

      <div class="modal-body">
        <div class="modal__content">
          <h2 class="logo"> <span class=""></span> Comida al instante</h2>
             
          
          </h2> 
          <p class="mt-md-3 mt-2">Solicita ya tu pedido, estamos en algunos barrios de la localidad de Usme</p>
          <img src="assets/images/sandwich.png" alt="image" class="img-fluid radius-image mt-4">
          <div class="widget-social-icons mt-sm-5 mt-4">
            <h5 class="widget-title">Conocenos</h5>
            
          </div>
          
        </div>
      </div>
    </div>
    <!-- //modal-content -->
  </div>
  <!-- //modal-dialog -->
</div>
<!-- //Domain modal -->
<section class="w3l-banner" id="banner">
    <div class="new-block py-5">
        <div class="container">
            <div class="row middle-section">
                <div class="col-lg-7 section-width align-self">
                     <style>
                      h1 { color: #FFFFFF; }
                    </style>
                    <h1>Los pedidos en Usme, ya no serán un problema</h1>
                    <a href="login.jsp" class="btn btn-secondary btn-outline-style mt-md-5 mt-4"> 
                        <span class="fa fa-shopping-cart mr-2"></span>Has tu pedido</a>
                </div>
                <div class="col-lg-5 history-info mt-lg-0 mt-5 pt-lg-0 pt-md-4">
                    <img src="assets/images/pizza-full.png" class="img-fluid" alt="image">
                    <div class="cost">
                        <h5>100%</h5>
                        <h3>online</h3>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- iphone home block -->

          <!-- .......................................
              
            
 //iphone home block -->

<section class="w3l-portfolio-8 py-5">
    <div class="portfolio-main py-lg-5 py-md-4">
        <div class="container">
            <div class="title-content text-center">
                <h6 class="sub-title">Galería</h6>
                <h3 class="title-big">Productos</h3>
            </div>
            <div class="row galler-top mt-lg-5 mt-4">
                <div class="col-md-3 col-6 protfolio-item hover14 align-self">
                    <a href="assets/images/g6.jpg" data-lightbox="example-set"
                    data-title="lorem ipsum dolor sit amet">
                            <figure>
                                <img src="assets/images/g15.jpeg" alt="product" class="img-fluid radius-image">
                            </figure>
                    </a>
                </div>
                <div class="col-md-3 col-6 protfolio-item hover14">
                    <a href="assets/images/g1.jpg" data-lightbox="example-set" class="mb-4"
                    data-title="lorem ipsum dolor sit amet">
                            <figure>
                                <img src="assets/images/f1.jpg" alt="product" class="img-fluid radius-image">
                            </figure>
                    </a>
                    <a href="assets/images/g2.jpg" data-lightbox="example-set"
                    data-title="lorem ipsum dolor sit amet">
                            <figure>
                                <img src="assets/images/f3.jpg" alt="product" class="img-fluid radius-image">
                            </figure>
                    </a>
                </div>
                <div class="col-md-3 col-6 protfolio-item hover14">
                    <a href="assets/images/g3.jpg" data-lightbox="example-set" class="mb-4"
                    data-title="lorem ipsum dolor sit amet">
                            <figure>
                                <img src="assets/images/k8.jpg" alt="product" class="img-fluid radius-image">
                            </figure>
                    </a>
                    <a href="assets/images/g6.jpg" data-lightbox="example-set"
                    data-title="lorem ipsum dolor sit amet">
                            <figure>
                                <img src="assets/images/g10.jpg" alt="product" class="img-fluid radius-image">
                            </figure>
                    </a>
                </div>
                <div class="col-md-3 col-6 protfolio-item hover14 align-self">
                    <a href="assets/images/g15.jpg" data-lightbox="example-set"
                    data-title="lorem ipsum dolor sit amet">
                            <figure>
                                <img src="assets/images/u7.jpg" alt="product" class="img-fluid radius-image">
                            </figure>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="w3l-food" id="food">
    <div class="foods1 py-5">
        <div class="container py-lg-5 py-md-4">
            <div class="title-content text-center">
                <h6 class="sub-title">Alfonso lópez</h6>
                <h3 class="title-big">Populares</h3>
            </div>
            <div class="foods1-content mt-lg-5 mt-4 mb-sm-0 mb-4">
                <div class="owl-carousel owl-theme text-center">
                    <div class="item">
                        <div class="d-grid food-info">
                            <div class="column">
                                <h4 class="name-pos"><a href="#url">Beraca Café</a></h4>
                                <p>Cra 7 A #98-33 sur</p>
                                <h5>Waffles y café</h5>
                               
                                <a href="#url"><img src="assets/images/p1.jfif" alt="" class="img-fluid radius-image mt-4"/></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="d-grid food-info">
                            <div class="column">
                                <h4 class="name-pos"><a href="#url">Restaurante buoler</a></h4>
                                <p>Calle 90 #23 Sur</p>
                                <h5>Almuerzos</h5>
                               
                                <a href="#url"><img src="assets/images/m2.jfif" alt="" class="img-fluid radius-image mt-4"/></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="d-grid food-info">
                            <div class="column">
                                <h4 class="name-pos"><a href="#url">Postres Reina</a></h4>
                                <p> Calle 4 #34-22 Sur</p>
                                <h5>Postres para toda ocasión</h5>
                              
                                <a href="#url"><img src="assets/images/p3.jpg" alt="" class="img-fluid radius-image mt-4"/></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="d-grid food-info">
                            <div class="column">
                                <h4 class="name-pos"><a href="#url">Comidas rápidas la 90</a></h4>
                                <p>calle 90 #28 Sur</p>
                                <h5>Comida rápida</h5>
                                
                                <a href="#url"><img src="assets/images/p4.jpg" alt="" class="img-fluid radius-image mt-4"/></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="d-grid food-info">
                            <div class="column">
                                <h4 class="name-pos"><a href="#url">restaurante feel</a></h4>
                                <p>Carrera 9 #04-33 sur</p>
                                <h5>comida</h5>
                             
                                <a href="#url"><img src="assets/images/team1.jpg" alt="" class="img-fluid radius-image mt-4"/></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--/testimonials-->
	<section class="w3l-testimonials" id="testimonials">
		<div class="testimonials py-5">
			<div class="container py-lg-5 py-md-4">
				<div class="title-content text-center">
					
					<h3 class="title-big">El mejor servicio a la puerta de tu casa</h3>
				</div>
				<div class="row mt-lg-5 mt-4">
					<div class="col-md-12 mx-auto">
						<div class="owl-two owl-carousel owl-theme">
							<div class="item">
								<div class="slider-info">
									<div class="message">
                                        <span class="fa fa-quote-left"></span>
										<h5> Conoce las tiendas y restaurantes que hacen parte de comidas al instante, localidad de Usme</h5>
										<div class="name mt-4">
											<h4></h4>
											<p>Bogotá D.C.</p>
										</div>
									</div>
									<div class="img-circle">
										<img src="assets/images/client1.jpg" class="img-fluid testimonial-img radius-image" alt="client">
									</div>
								</div>
							</div>
							<div class="item">
								<div class="slider-info">
									<div class="message">
                                        <span class="fa fa-quote-left"></span>
										<h5>Lorem ipsum dolor sit amet consect etur adipisicing elit. Ea sit id
                                        	 officia quod quasi necess itatibus Harum necess itatibus
                                            error dam tenetur dolor elit sed init amet.</h5>
										<div class="name mt-4">
											<h4>Sara Grant</h4>
											<p>Example Company</p>
										</div>
									</div>
									<div class="img-circle">
										<img src="assets/images/client2.jpg" class="img-fluid testimonial-img radius-image" alt="client">
									</div>
								</div>
							</div>
							<div class="item">
								<div class="slider-info">
									<div class="message">
                                        <span class="fa fa-quote-left"></span>
										<h5>Lorem ipsum dolor sit amet consect etur adipisicing elit. Ea sit id
                                        	 officia quod quasi necess itatibus Harum necess itatibus
                                            error dam tenetur dolor elit sed init amet.</h5>
										<div class="name mt-4">
											<h4>Luke Jacobs</h4>
											<p>Example Company</p>
										</div>
									</div>
									<div class="img-circle">
										<img src="assets/images/client3.jpg" class="img-fluid testimonial-img radius-image" alt="client">
									</div>
								</div>
							</div>
							<div class="item">
								<div class="slider-info mt-lg-4 mt-3">
									<div class="message">
                                        <span class="fa fa-quote-left"></span>
										<h5>Lorem ipsum dolor sit amet consect etur adipisicing elit. Ea sit id
                                        	 officia quod quasi necess itatibus Harum necess itatibus
                                            error dam tenetur dolor elit sed init amet.</h5>
										<div class="name mt-4">
											<h4>Claire Olson</h4>
											<p>Example Company</p>
										</div>
									</div>
									<div class="img-circle">
										<img src="assets/images/client4.jpg" class="img-fluid testimonial-img radius-image" alt="client">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--//testimonials-->
  <!-- footers 20 -->
  <section class="w3l-footers-20">
  	<div class="footers20">
  		<div class="container">
  			<div class="footers20-content">
  				<div class="d-grid grid-col-4 grids-content">
  					<div class="column">
  						<h4>Ubicación</h4>
  						<p class="contact-para3">Usme, Bogotá D.C.</p>
  						
  					</div>
  					
  					<div class="column">
  						<h4>Servicio</h4>
  						<p>Lunes - Domingo</p>
  					</div>
  					
            
  				</div>
  				<div class="d-grid grid-col-3 grids-content1 bottom-border">
  					<div class="columns copyright-grid">
  						<p class="copy-footer-29">© 2020 comida al instante | Derechos reservados 
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
  <script src="assets/js/jquery-3.3.1.min.js"></script>

  <!-- libhtbox -->
  <script src="assets/js/lightbox-plus-jquery.min.js"></script>


  <script src="assets/js/jquery.magnific-popup.min.js"></script>

  <script src="assets/js/counter.js"></script>
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
  <script src="assets/js/owl.carousel.js"></script>
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
  <script src="assets/js/bootstrap.min.js"></script>

  </body>

  </html>