<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelAndControl.Koneksi"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page language="java" %>
<%! Statement statement;%>
<%! ResultSet result;%>
<% Koneksi conn = new Koneksi();%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>CV.Putra Harapan Baru Edi Daya Group</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
        <!--Custom-Theme-files-->
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel='stylesheet' type='text/css' />	
        <link href="css/menu.css" rel='stylesheet' type='text/css' />	
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
                            <li><a  class="active" href="LamanAdmin.jsp" data-hover="Home">Home</a></li> 
                            <li><a  data-hover="Tambah Data">Tambah Data
                                    <ul><a href="FormAddApplicant.jsp" value="applicant"> Applicant (Tenaga Kerja)</a> </ul>
                                    <ul><a href="FormAddInfoLoker.jsp" value=""> Lowongan Kerja</a> </ul>
                                </a></li>

                            <li><a  data-hover="Lihat Data">Lihat Data
                                    <ul><a href="LihatDataApplicant.jsp" value="applicant"> Applicant (Tenaga Kerja)</a> </ul>
                                    <ul><a href="LihatDataCustomer.jsp" value="customers"> Customers</a> </ul>
                                    <ul><a href="DataPelamar.jsp" value="dataPelamar"> PELAMAR PEKERJAAN</a> </ul>

                                </a></li>
                            <li><a  data-hover="Lowongan Pekerjaan">Lowongan Pekerjaan

                                    <ul><a  href=# data-hover="KONFIRMASI LOWONGAN KERJA">KONFIRMASI LOWONGAN KERJA </a></ul>
                                    <ul><a  href="LihatDataLoker.jsp" data-hover="INFORMASI LOWONGAN KERJA">INFORMASI LOWONGAN KERJA </a></ul>
                                    <ul><a href=# data-hover="Hapus Lowongan Pekerjaan">Hapus Lowongan Kerja</a></ul>
                                </a></li>

                            <li><a href="LogoutProccess.jsp" data-hover="Logout">Logout</a></li>
                        </ul>

                    </div>
                    <!-- script-untuk-menu -->
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
                        <a href=""><h1>CV. Putra Harapan Baru Edi Daya Group</h1></a>
                        <h2> Jasa Penyalur Tenaga Kerja</h2>
                        <p> Jl.kedawung No.170, Nologaten, Catur Tunggal, Depok, Sleman, Yogyakarta</p>

                        <br>

                        <h3>Selamat Datang Admin</h3>

                    </div>
                    <div class="header-top-right">

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="banner">
            <!--            <div class="container">
                            
                            banner
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
                        </div>-->
        </div>
        <!--welcome/sekilas tentang edi daya group-->
        <div class="welcome">
            <div class="container">
                <h2>EDI DAYA GROUP </h2>
                <p><strong>EDI DAYA GROUP</strong> sebagai salah satu perusahaan yang bergerak dalam bidang 
                    penyediaan jasa tenaga kerja bertujuan membantu menyediakan tenaga kerja yang professional 
                    di bidangnya dan telah dilengkapi dengan ijin dari instansi Pemerintah.
                    <strong>EDI DAYA GROUP</strong> berkomitmen untuk menempatkan tenaga kerja  
                    yang berkualitas sehingga memudahkan penanganan dan pengelolaan , 
                    dan klien bisa lebih berkonsentrasi pada pengembangan lainnya.
                </p>

            </div>
        </div>
        <!--//welcome-->

        <!--/footer/info kontak dan alamat-->
        <div class="footer">
            <div class="container">
                <div class="footer-top">
                    <div class="col-md-4 footer-grid">
                        <h4>Kontak kami</h4>
                        <ul class="bottom">
                            <li><i class="glyphicon glyphicon-earphone"></i>Telepon/hp : 0274-2800589 / 082226585048 / 085601987983</li>
                            <li>pin BB : 5d1a53dc

                        </ul>
                    </div>

                    <div class="col-md-4 footer-grid">
                        <h4>Alamat Kantor</h4>
                        <ul class="bottom">
                            <li><i class="glyphicon glyphicon-map-marker"></i>Jl.kedawung No.170, Nologaten, Catur Tunggal, Depok, Sleman, Yogyakarta</li>

                        </ul>
                    </div>
                    <div class="col-md-4 footer-grid">
                        <h4>Jam Kerja</h4>
                        <ul class="bottom">

                            <li>Senin-Minggu pukul 09.00-16.00</li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="copy">
            <p>&copy; 2016 Edi Daya Group. All Rights Reserved </p>
        </div>
        <!--//footer-->
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
</html