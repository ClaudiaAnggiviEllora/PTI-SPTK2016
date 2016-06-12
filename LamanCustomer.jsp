<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="modelAndControl.Koneksi"%>
<%@page import="java.sql.Statement"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
                            <li><a  class="active" href="LamanCustomer.jsp" data-hover="Home">Home</a></li> 
                            <li><a  href="LamanProfileCust.jsp" data-hover="Profile Customers">Profile Customer</a></li>
                            <li><a  href="EditProfilCust.jsp" data-hover="Edit Data">Edit Data</a></li>
                            <li><a  href="FormPasangIklan.jsp" data-hover="Pasang Iklan">Pasang Iklan</a></li>
                            <li><a  href="LogoutProccess.jsp" data-hover="Logout">Logout</a></li>
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
                        <a href="index.html"><h1>CV. Putra Harapan Baru Edi Daya Group</h1></a>
                        <h2> Jasa Penyalur Tenaga Kerja</h2>
                        <p> Jl.kedawung No.170, Nologaten, Catur Tunggal, Depok, Sleman, Yogyakarta</p>
                        <%
            Statement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();

            statement = sqlConn.createStatement();
            String query;
            String userName = (String) session.getAttribute("userName");

            query = "select namaCust from tabelcustomers where userName='" + userName + "' ";
            resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
        %>
        <br>
        
        <h3>Selamat Datang <%=resultSet.getString("namaCust")%></h3>
                        <%}%>
                    </div>
                    
                    <div class="header-top-right">
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
                                <h3>Butuh Pekerjaan? </h3>
                                <h2> Mulai nasib anda disini...</h2>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Butuh Tenaga Kerja? </h3>
                                <h2>Kami dapat memberikan solusi</h2>
                            </div>								
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Belum Punya Akun? </h3>
                                <h2>Registrasi dulu...</h2>
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


        <!--start-info lowongan kerja-->
        <!--info lowongan kerja-->
        <div class="service-section" id="service">
            <div class="container">
                <h3 class="tittle">Info Update lowongan kerja</h3>
                <div class="serve-grids">
                    <div class="serve-one">
                        <div class="col-md-6 serve-left">
                            <div class="col-md-6 service-grid">

                                <h5>Staf Admin</h5>
                                <p>Minimal SMA sederajat
                                <p> Wanita
                                <p>Niat kerja, jujur, rajin
                                <p>Penampilan rapi dan menarik
                                <p>Non hijab
                                <p>Gaji awal 1,2jt
                                <p>Makan tidur dalam
                                <p>Libur tiap hari minggu dan tanggal merah</p>
                                <p>Lokasi Piyungan</p>


                            </div>
                            <div class="col-md-6 service-grid">

                                <h5>Baby Sitter</h5>
                                <p>Identitas jelas dan lengkap
                                <P>Wanita
                                <p>Niat kerja, jujur, sabar
                                <p>Gaji 1,3 - 1,4jt
                                <p>Makan tidur dalam
                                <p>Libur 2x per bulan
                                <p>Lokasi Jogja Bantul</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-md-6 serve-img">
                            <img src="images/staf.jpg" alt=""/>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="serve-one">
                        <div class="col-md-6 serve-img two">
                            <img src="images/cs.jpg" alt=""/>
                        </div>
                        <div class="col-md-6 serve-left two">
                            <div class="col-md-6 service-grid">
                                <h5>Waiter</h5>
                                <P>Pria
                                <p>Minimal SMP
                                <p>Niat kerja, rajin
                                <p>Gaji awal 800 ribu
                                <p>Makan tidur dalam
                                <p>Lokasi Jogja Sleman</p>
                            </div>
                            <div class="col-md-6 service-grid">

                                <h5>House Keeping</h5>
                                <P>Pria
                                <p>Minimal SMP
                                <p>Niat kerja, jujur dan rajin
                                <p>Gaji awal 800 ribu
                                <p>Makan tidur dalam
                                <p>Lokasi Jogja Semarang</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>

                    </div>
                </div>
            </div>
        </div>
        <!--//end-welcome-->



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
</html>