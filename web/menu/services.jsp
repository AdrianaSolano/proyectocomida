<%-- 
    Document   : services.jsp
    Created on : 23-ago-2020, 23:53:24
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Restaurantes</title>

  <!-- Web-Fonts -->
  <link href="//fonts.googleapis.com/css?family=Spartan:400,500,600,700,900&display=swap" rel="stylesheet">

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
                <p> New York, NY-90814 Hill Station 4th Street</p>
              </li>
              <li class="mt-3">
                <p><span class="fa fa-phone"></span> <a href="tel:+404-11-22-89">+1-2345-345-678-11</a></p>
              </li>
              <li class="mt-2">
                <p><span class="fa fa-envelope"></span> <a
                    href="mailto:pizza@order.com">pizza@order.com</a></p>
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

                
<!--  //Intro video popup section -->
<!--  form-12 -->
<section class="w3l-breadcrumb">
    <div class="container">
        <ul class="breadcrumbs-custom-path">
            <li><a href="#url">Inicio</a></li>
            <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Restaurantes </li>
        </ul>
    </div>
</section>
<!-- // form-12 -->


<!-- team -->

<!-- //team -->


<section class="w3l-team" id="team">
  <div class="team-block py-5">
    <div class="container py-lg-5">
         <div class="title-content text-center">
           
             <h3 class="sub-title">Tiendas</h3>
            <h6 class="sub-title">populares</h6>
        </div>
      <div class="row">
        <div class="col-lg-3 col-sm-6 mt-lg-5 mt-4">
          <div class="box16">
            <a href="#url"><img src="../assets/images/team65.jpg" alt="" class="img-fluid radius-image" /></a>
            <div class="box-content">
              <h3 class="title"><a href="#url">Beraca</a></h3>
              <span class="post">Alfonso lopez</span>
              <ul class="social">
                <li>
                  <a href="#" class="facebook">
                    <span class="fa fa-facebook-f"></span>
                  </a>
                </li>
                <li>
                  <a href="#" class="instagram">
                    <span class="fa fa-instagram"></span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 mt-lg-5 mt-4">
          <div class="box16">
            <a href="#url"><img src="../assets/images/team222.jpg" alt="" class="img-fluid radius-image" /></a>
            <div class="box-content">
              <h3 class="title"><a href="#url">on the wok</a></h3>
              <span class="post">Chuniza</span>
              <ul class="social">
                <li>
                  <a href="#" class="facebook">
                    <span class="fa fa-facebook-f"></span>
                  </a>
                </li>
        
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 mt-5">
          <div class="box16">
            <a href="#url"><img src="../assets/images/team3.jpg" alt="" class="img-fluid radius-image" /></a>
            <div class="box-content">
              <h3 class="title"><a href="#url">Donde richard</a></h3>
              <span class="post">Santa librada</a></span>
              <ul class="social">
                <li>
                  <a href="#" class="facebook">
                    <span class="fa fa-facebook-f"></span>
                  </a>
                </li>
               
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 mt-5">
          <div class="box16">
            <a href="#url"><img src="../assets/images/team4.jpg" alt="" class="img-fluid radius-image" /></a>
            <div class="box-content">
              <h3 class="title"><a href="#url">Postres reina</a></h3>
              <span class="post">Danubio</a></span>
              <ul class="social">
                <li>
                  <a href="#" class="facebook">
                    <span class="fa fa-facebook-f"></span>
                  </a>
                </li>
                <li>
                  <a href="#" class="instagram">
                    <span class="fa fa-instagram"></span>
                  </a>
                </li>

                
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- features -->

      
</section>



<!--  Intro video popup section -->
<section class="w3_stats py-5" id="stats">
        <div class="container py-lg-7 py-md-4">
            <div class="title-content text-center">
                <h6 class="sub-title"></h6>
                <h3 class="title-big">Nunca habia sido tan facil pedir un domicilio en Usme, tenemos todo tipo de productos de tus tiendas y restaurantes preferidos</h3>
            </div>
           
                    </div>
                </div>
            </div>
        </div>
    </section>


<section class="w3l-team" id="team">
  <div class="team-block py-5">
    <div class="container py-lg-5">
        <div class="title-content text-center">
            <h3 class="sub-title">Postres</h3>
            <h6 class="sub-title">varios</h6>
        </div>
      <div class="row">
        <div class="col-lg-3 col-sm-6 mt-lg-5 mt-4">
          <div class="box16">
            <a href="#url"><img src="../assets/images/team25.jpg" alt="" class="img-fluid radius-image" /></a>
            <div class="box-content">
              <h3 class="title"><a href="#url">La dinastia</a></h3>
              <span class="post">tunjuelito</span>
              <ul class="social">
                <li>
                  <a href="#" class="facebook">
                    <span class="fa fa-facebook-f"></span>
                  </a>
                </li>
                <li>
                  <a href="#" class="instagram">
                    <span class="fa fa-instagram"></span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 mt-lg-5 mt-4">
          <div class="box16">
            <a href="#url"><img src="../assets/images/team90.jpg" alt="" class="img-fluid radius-image" /></a>
            <div class="box-content">
              <h3 class="title"><a href="#url">nevados</a></h3>
              <span class="post">Brasilia</span>
              <ul class="social">
                <li>
                  <a href="#" class="facebook">
                    <span class="fa fa-facebook-f"></span>
                  </a>
                </li>
        
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 mt-5">
          <div class="box16">
            <a href="#url"><img src="../assets/images/team4.jpg" alt="" class="img-fluid radius-image" /></a>
            <div class="box-content">
              <h3 class="title"><a href="#url">the best</a></h3>
              <span class="post">el porvenir</a></span>
              <ul class="social">
                <li>
                  <a href="#" class="facebook">
                    <span class="fa fa-facebook-f"></span>
                  </a>
                </li>
               
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-6 mt-5">
          <div class="box16">
            <a href="#url"><img src="../assets/images/team65.jpg" alt="" class="img-fluid radius-image" /></a>
            <div class="box-content">
              <h3 class="title"><a href="#url">sabores Laura</a></h3>
              <span class="post">Cabaña</a></span>
              <ul class="social">
                <li>
                  <a href="#" class="facebook">
                    <span class="fa fa-facebook-f"></span>
                  </a>
                </li>
                <li>
                  <a href="#" class="instagram">
                    <span class="fa fa-instagram"></span>
                  </a>
                </li>


              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section>
<div class="agileits-services  py-5" id="menu">
    <div class="container py-md-5">
            <div class="title-content text-center">
                <h6 class="sub-title">Productos mas populares</h6>
                <h3 class="title-big">Menu</h3>
            </div>
      <div class="pt-lg-5 pt-4">
        <div class="row menu-body">
          <!-- Section starts: Appetizers -->
          <div class="col-lg-6 menu-section pr-lg-5">
            <h3 class="menu-section-title">Beraca</h3>
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Waffle nutella </h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$11</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>waffle con nutella, banano, fresas y dos bolas de helado </p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Hamburguesa de la casa</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$24</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>doble carne, tozineta, queso napolitano, pan bimbo</p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Pancake</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$19</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>cobertura de chocolate acompañado de frutas</p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Tacos rancheros</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$20</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>salsa de la casa, queso rallado, tozineta, carne desmechada y guacamole </p>
              </div>
            </div>
            <!-- Item ends -->
          </div>
          <!-- Section ends: Appetizers -->

          <!-- Section starts: Appetizers -->
          <div class="col-lg-6 menu-section pl-lg-5">
            <h3 class="menu-section-title">Sabores Laura</h3>
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Almuerzo sorpresa</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$40</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p></p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>combo para niños</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$29</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>hamburguesa kids, manzana, huevo kinder, galletas y jugo natural</p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Combo vegetariano</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$30</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>hamburguesa de frijoles, jugo de soya, pera o manzana y postre </p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Combo familiar</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$11</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>dos pollos (broaster, frito o asado) gaseosa 2.5L , arepas fritas y combo de papa salada </p>
              </div>
            </div>
            <!-- Item ends -->
          </div>
                    <!-- Section ends: Appetizers -->
                    
          <!-- Section starts: Drinks -->
          <div class="col-lg-6 menu-section pr-lg-5">
            <h3 class="menu-section-title">Donde richard</h3>
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Pizza familiar</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$40</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>8 porciones al gusto</p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>mazorcada</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$20</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>mazorca,carne y pollo desmechado, queso rallado, todas las salsas </p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Salchipapa</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$10</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>huevo codorniz, carne, salchicha, chorizo, queso rallado, papas a la francesa</p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Hamburguesa Richard</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$20</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>triple carne</p>
              </div>
            </div>
            <!-- Item ends -->
          </div>
          <!-- Section ends: Drinks -->

          <!-- Section starts: Drinks -->
          <div class="col-lg-6 menu-section pl-lg-5">
            <h3 class="menu-section-title">la dinastia</h3>
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Postre especial</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$4</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>sabor a maracuya</p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Chocolate Fudge</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$2</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>postre con chocolate derretido</p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Postre para niños</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$6</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>mantecada de franbuesa con juguete incluido</p>
              </div>
            </div>
            <!-- Item ends -->
            <!-- Item starts -->
            <div class="menu-item">
              <div class="row border-dot no-gutters">
                <div class="col-8 menu-item-name">
                  <h6>Whipped Cream</h6>
                </div>
                <div class="col-4 menu-item-price text-right">
                  <h6>$7</h6>
                </div>
              </div>
              <div class="menu-item-description">
                <p>postre tres leches con gelatina</p>
              </div>
            </div>
            <!-- Item ends -->
          </div>
          <!-- Section ends: Drinks -->
        </div>
      </div>
    </div>
  </div>
  <!-- footers 20 -->
 
  						 <section class="w3l-footers-20">
    <div class="footers20">
      <div class="container">
        <div class="footers20-content">
          <div class="d-grid grid-col-4 grids-content">
            <div class="column">
              <h4>Ubicacion</h4>
              <p class="contact-para3">Usme, Bogota D.C.</p>
              <a href="mailto:hello@w3layouts.com">
                <p class="contact-mail mt-2">comidasalinstante@gmail.com</p>
              </a>
            </div>
            <div class="column">
              <h4>Telefono</h4>
              
              <a href="tel:+1-2345-678-11">
                <p class="contact-phone mt-2">+57 7630423</p>
              </a>
            </div>
            <div class="column">
              <h4>Horarios</h4>
              <p>Lunes - Domingo</p>
              <p class="mt-2">09:00 am a 10:00 pm</p>
            </div>
            
          </div>
          <div class="d-grid grid-col-3 grids-content1 bottom-border">
            <div class="columns copyright-grid">
              <p class="copy-footer-29">© 2020 comidas al istante | Derechos reservados 
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