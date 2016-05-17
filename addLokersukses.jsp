<%-- 
    Document   : addLokersukses
    Created on : May 4, 2016, 1:01:06 AM
    Author     : laura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelAndControl.Koneksi"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page language="java" %>
<%! Statement statement;%>
<%! ResultSet result;%>
<% Koneksi conn = new Koneksi();%>
<!DOCTYPE html>

<%-- 
    Document   : FormAddInfoLoker
    Created on : May 3, 2016, 8:46:42 PM
    Author     : laura
--%>


<%
    Statement statement;
    Koneksi dbConn = null;
    Connection sqlConn = null;
    ResultSet resultSet = null;

    dbConn = new Koneksi();
    sqlConn = dbConn.getConnection();

    statement = sqlConn.createStatement();
    String query;
    String kode = (String) session.getAttribute("kodeIklan");
    query = "select kodeIklan from tabelloker where kodeIklan='" + kode + "'";
    resultSet = statement.executeQuery(query);
%>
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
                           <li><a  href="Home.jsp" data-hover="HOME">HOME</a></li> 
                            <li><a href="about.html" data-hover="ABOUT">ABOUT</a></li>



                            <li><a href="FormAddInfoLoker.jsp"data-hover="TAMBAH INFORMASI LOKER">TAMBAH INFORMASI LOKER </a></li>
<li><a href="FormAddApplicant.jsp"data-hover="TAMBAH INFORMASI LOKER">TAMBAH DATA APPLICANT (TENAGA KERJA) </a></li>
                            <li><a href="LamanSearchLoker.jsp" data-hover="INFORMASI LOKER">INFORMASI LOKER</a></li>
                            <li><a href="" data-hover="DATA PENDAFTAR LOKER">DATA PENDAFTAR LOKER </a></li>
                             <li><a href="FormPasangIklan.jsp" data-hover="DATA PEMASANGAN IKLAN LOKER">DATA PEMASANGAN IKLAN LOKER</a></li>
 <li><a href="" data-hover="HAPUS LOKER">HAPUS LOKER </a></li>
  <li><a href="logoutprocess.jsp" data-hover="LOGOUT">LOGOUT </a></li>
                            
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
        
        <h3><font color="blue">Lowongan kerja berhasil ditambahkan
            dengan kode <%=resultSet.next() ? resultSet.getString(1) : null%></font></h3>
                        
                    </div>
                    
                </div>
            </div>
        </div>
       
        <!--welcome/sekilas tentang edi daya group-->
       
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

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>

        <small>Lowongan kerja berhasil ditambahkan
            dengan kode 
        </small>


    </body>
</html>-->
