<%@page import="model.tabelloker" %>
<%@page import="java.util.ArrayList"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
    <head>
        <title>Legalized a Society & People Category Flat Bootstrap Responsive Website Template | Practice Areas :: w3layouts</title>
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
                            <li><a class="active" href="Home.jsp" data-hover="HOME">HOME</a></li> 
                           <li><a href="LamanProfilApp.jsp" data-hover="PROFIL DIRI">PROFIL DIRI</a></li>
                            <li><a href="LamanSearchLoker.jsp" data-hover="INFORMASI LOWONGAN KERJA">INFORMASI LOWONGAN KERJA </a></li>
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
                        <a href="index.html"><h1>Sistem Penyalur tenaga Kerja PT. Edi Daya Group</h1></a>
                    </div>

                </div>
            </div>


            <table width="1350px" align="center"
                   style="border:1px solid #000000;">
                <tr>
                    <td colspan=20 align="center"
                        style="background-color:teal">
                        <b>Lowongan Pekerjaan</b></td>
                </tr>
                <tr style="background-color:lightgrey;">
                    <td><b>Tanggal</b></td>
                    <td><b>Jenis Pekerjaan</b></td>
                    <td><b>Job</b></td>
                    <td><b>Owner</b></td>
                    <td><b>NO.KTP</b></td>
                    <td><b>NPWP</b></td>
                    <td><b>NO.Telpon</b></td>
                    <td><b>Perusahaan</b></td>
                    <td><b>Penempatan</b></td>
                    <td><b>Syarat</b></td>
                    <td><b>Fasilitas</b></td>
                    <td><b>Keterangan</b></td>
                    <td><b>Kode Iklan</b></td>
                    <td><b>Daftar</b><td>
                </tr>
                <%
                    ArrayList<tabelloker> hasilPencarianList = (ArrayList<tabelloker>)request.getAttribute("hasilPencarianList");
                    for (int i = 0; i < hasilPencarianList.size(); i++) {
                %>
                <tr>
                    <td><%= hasilPencarianList.get(i).getTanggal()%></td>
                    <td><%= hasilPencarianList.get(i).getJenisPekerjaan() %></td>
                    <td><%= hasilPencarianList.get(i).getJob() %></td>
                    <td><%= hasilPencarianList.get(i).getOwner() %></td>
                    <td><%= hasilPencarianList.get(i).getNoKTP() %></td>
                    <td><%= hasilPencarianList.get(i).getNPWP() %></td>
                    <td><%= hasilPencarianList.get(i).getNoTelp()%></td>
                    <td><%= hasilPencarianList.get(i).getPerusahaan()%></td>
                    <td><%= hasilPencarianList.get(i).getPenempatan()%></td>
                    <td><%= hasilPencarianList.get(i).getSyarat()%></td>
                    <td><%= hasilPencarianList.get(i).getFasilitas()%></td>
                    <td><%= hasilPencarianList.get(i).getKeterangan()%></td>
                    <td><%= hasilPencarianList.get(i).getKodeIklan()%></td>
                    <td><a href="mendaftarPekerjaan.jsp"><input type="submit" value="Daftar"/></a></td>
                </tr>
                <%
                    }
                %>
            </table>

            <div class="copy">
                <p>&#169; Copyright 2016 | PTI | SPTK Project</p>
            </div>
    </body>
</html>