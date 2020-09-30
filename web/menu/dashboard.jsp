<%-- 
    Document   : dashboard.jsp
    Created on : 23-ago-2020, 22:45:35
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>comida al instante</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-dashboard.css?v=1.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
    <div class="wrapper ">
        <div class="sidebar" data-color="orange">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
            <div class="logo">
                
                    
                     <img class="logo-size" src="../assets/img/00.png" alt="" width="45" height="45">
                    <a href="http://www.creative-tim.com" class="simple-text logo-normal">
                    Comida al instante
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="active">
                        <a href="../examples/dashboard.jsp">
                            <i class="now-ui-icons design_app"></i>
                            <p>Inicio</p>
                        </a>
                    </li>
                    <li>
                        <a href="../examples/icons.html">
                            <i class="now-ui-icons education_atom"></i>
                            <p>tiendas</p>
                        </a>
                    </li>
                    <li>
                        <a href="../examples/map.html">
                            <i class="now-ui-icons location_map-big"></i>
                            <p>restaurantes</p>
                        </a>
                    </li>
                    <li>
                        <a href="../notifications.html">
                            <i class="now-ui-icons ui-1_bell-53"></i>
                            <p>Solicita tu pedido</p>
                        </a>
                    </li>
                    <li>
                        <a href="../examples/user.html">
                            <i class="now-ui-icons users_single-02"></i>
                            <p>xcosas</p>
                        </a>
                    </li>
                    <li>
                        <a href="../examples/tables.html">
                            <i class="now-ui-icons design_bullet-list-67"></i>
                            <p>Table List</p>
                        </a>
                    </li>
                    <li>
                        <a href="../examples/typography.html">
                            <i class="now-ui-icons text_caps-small"></i>
                            <p>Typography</p>
                        </a>
                    </li>
                    <li class="active-pro">
                        <a href="../examples/upgrade.html">
                            <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                            <p>Upgrade to PRO</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        
            <!-- Navbar -->
            
            <!-- End Navbar -->
            
            <footer class="footer">
                <div class="container-fluid">
                    <nav>
                        <ul>
                            <li>
                                <a href="https://www.creative-tim.com">
                                    Creative Tim
                                </a>
                            </li>
                            <li>
                                <a href="http://presentation.creative-tim.com">
                                    About Us
                                </a>
                            </li>
                            <li>
                                <a href="http://blog.creative-tim.com">
                                    Blog
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <div class="copyright">
                        &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>, Comida al instante
                       
                    </div>
                </div>
            </footer>
        </div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.min.js"></script>
<script src="../assets/js/core/popper.min.js"></script>
<script src="../assets/js/core/bootstrap.min.js"></script>
<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chart JS -->
<script src="../assets/js/plugins/chartjs.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/now-ui-dashboard.js?v=1.0.1"></script>
<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/demo/demo.js"></script>
<script>
    $(document).ready(function() {
        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();
    });
</script>

</html>