<!DOCTYPE HTML>
<html>
    <head>
        <title>SISTEM PENYALUR TENAGA KERJA</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Legalized Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
        <!--Custom-Theme-files-->
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel='stylesheet' type='text/css' />	
        <script src="js/jquery.min.js"></script>
        <!--/script-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 900);
                });
            });
        </script>
        <!--gallery-->
        <script src="js/jquery.chocolat.js"></script>
        <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="all" />
        <!--light-box-files -->
        <script type="text/javascript">
            $(function () {
                $('#example1 a').Chocolat();
            });
        </script>
        <script type="text/javascript">
            $(function () {
                $('#portfolio a').Chocolat();
            });
        </script>

    </head>
    <body>
        <!--start-home-->
        <div id="home" class="header">
            <div class="header-top">
                <div class="container">
                    <span class="menu"></span>
                    <div class="top-menu">
                        <ul class="cl-effect-16">
                            <li><a class="active" href="index.html" data-hover="HOME">Home</a></li> 
                            <li><a href="about.html" data-hover="About">About</a></li>
                            <li><a href="typography.html" data-hover="SERVICES">SERVICES</a></li>
                            <li><a href="areas.html" data-hover="Practise Area">Practise Area </a></li>
                            <li><a href="blog.html" data-hover="BLOG">BLOG</a></li>
                            <li><a href="contact.html" data-hover="CONTACT">Contact</a></li>
                        </ul>
                    </div>
                    <!-- script-for-menu -->
                    <script>
                        $("span.menu").click(function () {
                            $(".top-menu").slideToggle("slow", function () {
                                // Animation complete.
                            });
                        });
                    </script>
                    <div class="clearfix"></div>
                    <!--End-top-nav-script-->
                </div>
            </div>
            <div class="header-middle">
                <div class="container">
                    <div class="logo">
                        <a href="index.html"><h1>Legalized</h1></a>
                    </div>
                    <div class="header-top-right">
                        <form>
                            <input type="text" placeholder="Search" required="">
                            <input type="submit" value="">
                            <div class="clearfix"> </div>
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="banner">
            <div class="container">
                <div  class="callbacks_container">
                    <ul class="rslides" id="slider4">
                        <li>
                            <div class="banner-info">
                                <h3>Get Legal Help from Us</h3>
                                <p>Start your destiny here...</p>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Get Legal  Solution from Us </h3>
                                <p>Start your destiny here...</p>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Get Confidential  legal advice </h3>
                                <p>Start your destiny here...</p>
                            </div>								
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Get Legal  Solution from Us </h3>
                                <p>Start your destiny here...</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--banner-->
                <script src="js/responsiveslides.min.js"></script>
                <script>
                        // You can also use "$(window).load(function() {"
                        $(function () {
                            // Slideshow 4
                            $("#slider4").responsiveSlides({
                                auto: true,
                                pager: true,
                                nav: true,
                                speed: 500,
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
            </div>
        </div>
        <!--welcome-->
        <div class="welcome">
            <div class="container">
                <h2>We are <span>Passionate About Helping</span> Clients Achieve Their Goals</h2>
                <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna aliquyam eratsed diam voluptua vero eos accusam justo duo dolores rebum.</p>
                <ul class="wel">
                    <li>Get your Free Consultation </li>
                    <li class="phone">(888) 123-456-7890</li>
                    <li>Available 24/7 </li>
                </ul>
            </div>
        </div>
        <!--//welcome-->
        <!--about-->
        <div class="about">
            <div class="container">
                <h3 class="tittle">Login</h3>
            </div>
            <div class="col-md-7 info">
                <section class="ac-container">
                    <div>
                        <input id="ac-1" name="accordion-1" type="checkbox" />
                        <div class="col-md-7 info">
                            <section class="ac-container">
                                <div>
                                    <input id="ac-1" name="accordion-1" type="checkbox" />
                                    <label for="ac-1">Customer</label>
                                    <article class="ac-medium"> //membuat tampilan login applicant
                                        <label class="ui red ribbon label">Nomor ID</label>
                                        <input placeholder="Nomor Induk" type="text" name="userId">
                                        <label class="ui red ribbon label">Password</label>
                                        <input placeholder="Password" type="password" name="pass">
                                        <button class="ui right floated primary button">Login<i class="right chevron icon"></i></button>     
                                    </article>            
                                </div>
                                <li><a data-hover ="Form Pasang Iklan"> Pasang Iklan <select class="sub-menu"><option class="active" value ="customer"
                                        <option valie ="customer" Customer </option> </select> </a>
                                <label>Job</label>
                                <input placeholder="Job" type="text" name="Job">
                                <label>Owner</label>
                                <input placeholder="Owner" type="text" name="Owner">
                                <label>NoKTP</label>
                                <label>NoTlpn</label>
                                <input placeholder="Nomor Telepon" type="text" name="Nomor Telepon">
                                <label>Perusahaan</label>
                                <input placeholder="Perusahaan" type="text" name="Perusahaan">
                                <label>Penempatan</label>
                                <input placeholder="Penempatan" type="text" name="Penempatan">
                                <label>Syarat</label>
                                <input placeholder="Syarat" type="text" name="Syarat">                   
                                <label>Fasilitas</label>
                                <input placeholder="Fasilitas" type="text" name="Fasilitas">              
                                <label>Keterangan</label>
                                <input placeholder="Keterangan" type="text" name="Keterangan">

                                <button class="ui submit green button"><i class="save icon"></i>Simpan</button>    
                                </article>            
                                </div>
                                <!--start-smooth-scrolling-->
                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        /*
                                         var defaults = {
                                         containerID: 'toTop', // fading element id
                                         containerHoverID: 'toTopHover', // fading element hover id
                                         scrollSpeed: 1200,
                                         easingType: 'linear' 
                                         };
                                         */

                                        $().UItoTop({easingType: 'easeOutQuart'});

                                    });
                                </script>
                                <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
                                </body>
                                </html>
                                ID Applicant 
                                </td>
                            <td>
                                : <%=session.getAttribute("IDCustomer")%>
                            </td>
                            </tr>
                            <tr>
                                <td>
                                    Password
                                </td>
                                <td>
                                    : <%=session.getAttribute("password")%>
                                </td>
                            </tr>
                            </table></h3>
                    </div>
                </div>
                </body>
                </html>

