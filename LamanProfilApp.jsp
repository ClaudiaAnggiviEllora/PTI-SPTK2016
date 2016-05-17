<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelAndControl.Koneksi"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page language="java" %>
<%! Statement statement;%>
<%! ResultSet result;%>
<% Koneksi conn = new Koneksi();%>
<html>
    <head>
        <title>CV.Putra Harapan Baru Edi Daya Group</title>
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

    </head>
    <body>
        <!--start-home-->
        <div id="home" class="header">
            <div class="header-top">
                <div class="container">
                    <span class="menu"></span>
                    <div class="top-menu">
                        <ul class="cl-effect-16">
                            <li><a href="LamanApplicant.jsp" data-hover="HOME">HOME</a></li> 
                            <li><a href="LamanProfilApp.jsp" class="active" data-hover="PROFIL DIRI">PROFIL DIRI</a></li>
                            <li><a href="" data-hover="INFORMASI LOWONGAN KERJA">INFORMASI LOWONGAN KERJA</a></li> 
                            <li><a href="logoutprocess.jsp" data-hover="LOGOUT">LOGOUT</a></li>
                           
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
                        <a href="Home.jsp"><h1>CV. Putra Harapan Baru Edi Daya Group</h1></a>
                        <h2> Jasa Penyalur Tenaga Kerja</h2>
                        <p> Jl. Kedawung No.170, Nologaten, Catur Tunggal, Depok, Sleman, Yogyakarta</p>
                    </div>
                   
                    <div class="clearfix"> </div>
                </div>
            </div>

        </div>
      
        <!--Profil Applicant-->
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

            query = "select namaAppl, passwordUser, TTLAppl, telepon, alamatTinggal from tabelapplicant where userName='" + userName + "' ";
            resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
        %>
        <div class="about">
            <div class="container">
                <h3 class="tittle">Data Profil</h3>
                <div class="about-top">
                    <!--				       <div class="col-md-5 ab-text">
                                                                 <img src="images/ab.jpg" alt=""/>
                                                                     <div class="quote-author-info padding5"><p>There are many variations of passages of Lorem Ipsum available, but the majority some lorem.</p>
                                                                    <div class="author-title"><span class="author-designation">Advocate,</span> Joseph</div>
                                                                    </div>
                                                               </div>-->
                    <div class="col-md-7 info">
                        <section class="ac-container">

                            <div>  
                                <label for="ac-1">Nama : <%=resultSet.getString("namaAppl")%></label>

                            </div>
                            <div>
                                
                                <label for="ac-1">Password : <%=resultSet.getString("passwordUser")%></label>

                            </div>
                            <div>
                              
                                <label for="ac-1">Tempat Tanggal Lahir : <%=resultSet.getString("TTLAppl")%></label>

                            </div>
                            <div>
                               
                                <label for="ac-1">Telepon : <%=resultSet.getString("telepon")%></label>

                            </div>
                            <div>
                                
                                <label for="ac-1">Alamat Tinggal :<%=resultSet.getString("alamatTinggal")%></label>

                            </div> 
                      
                            
                            <% }%>

                            
                        </section>
<form action="EditProfilApp.jsp">
                                <div class="send">
                                    <input type="submit" value="Edit Profil" >
                                </div>
                            </form>
                    </div>
                    <div class="clearfix"></div>
                </div>

            </div>
        </div>

        <!--/contact-->
<!--        <div class="section-contact">
            <div class="container">
                <h2 class="second-head">Data Profil</h2>
                <div class="contact-main">

                    <div class="col-md-6 contact-grid">
                    

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>-->


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
        <!--start-smoth-scrolling-->
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