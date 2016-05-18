<%-- 
    Document   : LamanKonfirmasiIklan1
    Created on : May 9, 2016, 9:09:00 AM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                            <li><a href="about.html" data-hover="About">About</a></li>
                            <option  value="applicant"> Applicant (Tenaga Kerja)</option>
                            <li><a class="active" data-hover="KONFIRMASI IKLAN LOWONGAN KERJA">KONFIRMASI IKLAN LOWONGAN KERJA <select class="sub-menu"><option  value="customer">Customer (Pengguna Jasa)</option>
                                    </select></a></li>

                            <li><a href="typography.html" data-hover="LOGIN">LOGIN</a></li>
                            <li><a href="areas.html" data-hover="INFORMASI LOWONGAN KERJA">INFORMASI LOWONGAN KERJA </a></li>
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
                        <a href="index.html"><h1>CV. Putra Harapan Baru Edi Daya Group</h1></a>
                        <h2> Jasa Penyalur Tenaga Kerja</h2>
                        <p> Jl.kedawung No.170, Nologaten, Catur Tunggal, Depok, Sleman, Yogyakarta</p>
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
        <!--/form konfirmasi iklan-->
        <div class="section-contact">
            <div class="container">
                <h2 class="second-head">Konfirmasi Iklan Lowongan Kerja</h2>
                <div class="contact-main">
                    <div class="col-md-6 contact-grid">
                        <form action="servletKonfirmasiIklan" name="myform" id="myform" >

                            <table style='width:30%' border="0" align="center">

                                </tr>
                                <%
                                    try {

                                        //deklarasi url database
                                        String url = "jdbc:mysql://localhost:3306/sptk";
                                        Connection con = null;
                                        Statement stat = null;
                                        ResultSet rs = null;

                                        //load jdbc driver
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();

                                        con = DriverManager.getConnection(url, "root", "");

                                        stat = con.createStatement();

                                        //membuat query
                                        String query = "Select * from tabelloker";

                                        rs = stat.executeQuery(query);

                                %>
                                <table border="1">
                                    <tr>
                                        <th>Job</th>
                                        <th>Owner</th>
                                        <th>NO.KTP</th>
                                        <th>NPWP</th>
                                        <th>NO.Telpn</th>
                                        <th>Perusahaan</th>
                                        <th>Penempatan</th>
                                        <th>Syarat</th>
                                        <th>Fasilitas</th>
                                        <th>Keterangan</th>
                                        <th>Kode Iklan</th>
                                    </tr>
                                    <% while (rs.next()) {
                                    %>
                                    <tr>
                                        <td><%=rs.getString(1)%></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td><%=rs.getString(3)%></td>
                                        <td><%=rs.getString(4)%></td>
                                        <td><%=rs.getString(5)%></td>
                                        <td><%=rs.getString(6)%></td>
                                        <td><%=rs.getString(7)%></td>
                                        <td><%=rs.getString(8)%></td>
                                        <td><%=rs.getString(9)%></td>
                                        <td><%=rs.getString(10)%></td>
                                        <td><%=rs.getString(11)%></td>

                                    </tr>

                                    <%
                                        }
                                    %>
                                    <%
                                            //menutup koneksi
                                            rs.close();
                                            stat.close();
                                            con.close();
                                        } catch (Exception ex) {
                                            out.println("Unable to connect to database");
                                        }
                                    %>
                                </table>

                                <tr><center>Masukkan Kode Iklan</center>
                                <tr><input type="text" name="kodeIklan" value="" size="200">
                                <tr> <td><input type="submit" value="KONFIRMASI" name="KONFIRMASI"></td></tr>
                            </table>
                        </form>


                        </form>
                        </body>
                        </html>