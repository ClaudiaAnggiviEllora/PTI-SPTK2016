<%-- 
    Document   : SearchLoker
    Created on : Apr 5, 2016, 11:44:08 PM
    Author     : laura
--%>

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



                            <li><a data-hover="REGISTER">REGISTER <select class="sub-menu"><option class="active" value="applicant"> Applicant (Tenaga Kerja)</option>
                                        <option value="customer">Customer (Pengguna Jasa)</option>
                                    </select></a></li>

                            <li><a href="" data-hover="LOGIN">LOGIN</a></li>
                            <li><a class="active" data-hover="INFORMASI LOWONGAN KERJA">INFORMASI LOWONGAN KERJA </a></li>


                            
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
                    
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        
        <!--cari info loker -->                   
        <div class="service-section" id="service">
            <div class="container">
                <h3 class="tittle">Informasi lowongan kerja</h3>
                <table border ="1">
                                <td> <strong>Cari Berdasarkan Jenis Pekerjaan </strong>
                                    
                <select>
                    <option name="jenisPekerjaan" value="Administrasi Perkantoran">Administrasi Perkantoran</option>
                    <option name="jenisPekerjaan" value="Tenaga Perhotelan">Tenaga Perhotelan</option>
                    <option name="jenisPekerjaan" value="Pramuniaga">Pramuniaga</option>
                    <option name="jenisPekerjaan" value="Satpam">Satpam</option>
                    <option name="jenisPekerjaan" value="Tenaga Restoran">Tenaga Restoran (Waiter,Waitress,Barista,dll)</option>
                    <option name="jenisPekerjaan" value="Tenaga Pabrik">Tenaga Pabrik </option>
                    <option name="jenisPekerjaan" value="Warung Makan">Warung Makan</option>
                    <option name="jenisPekerjaan" value="Office Boy (OB)/ Cleaning Service">Office Boy (OB)/ Cleaning Service)</option>
                    <option name="jenisPekerjaan" value="Driver">Driver</option>
                    <option name="jenisPekerjaan" value="Tenaga Tukang">Tenaga Tukang</option>
                    <option name="jenisPekerjaan" value="Pembantu Rumah Tangga">Pembantu Rumah Tangga (PRT)</option>
                    <option name="jenisPekerjaan" value="Baby Sitter">Baby Sitter</option>
                    <option name="jenisPekerjaan" value="lain-lain">Lain-lain</option>
                </select>
                                    
            </td>
            <td>
                <input type="submit" value="Cari" name="submit">
            </td>
                            </table> 
                <!--beberapa info loker-->
                <div class="serve-grids">
                    <div class="serve-one">
                       
                        <div class="col-md-6 serve-left">
                            <div class="col-md-6 service-grid">

                                <h5>Staf Admin</h5>
                                <p>Pendidikan Minimal SMA sederajat
                                <p>Wanita
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
                                <P>Pendidikan Minimal SMA
                                <p>Niat kerja, jujur, sabar
                                <p>Gaji 1,3 - 1,4jt
                                <p>Makan tidur dalam
                                <p>Libur 2x per bulan
                                <p>Lokasi Jogja Bantul</p>
                            </div>
                            <div class="col-md-6 service-grid">
                            
                                <h5>Waiter</h5>
                                <P>Pria
                                <p>Minimal SMP
                                <p>Niat kerja, rajin
                                <p>Gaji awal 800 ribu
                                <p>Makan tidur dalam
                                <p>Lokasi Jogja Sleman</p>
                            
                        </div>
                        <div class="clearfix"></div>
                    </div>
                         <div class="col-md-6 serve-right">
                            <div class="col-md-6 service-grid">

                                <h5>SPG</h5>
                                <p>Identitas jelas dan lengkap
                                <P>Wanita
                                <p>Pendidikan Minimal SMP
                                <p>Berpenampilan menarik
                                <p>Maksimal umur 25 tahun
                                <p>Berpengalaman
                                <p>gaji 3jt+bonus (lepas)
                                <p>gaji 2,5jt+bonus (ada mes)
                                <p>Lokasi Jakarta</p>
                                
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
                             
                             <div class="col-md-6 service-grid">
                            
                                <h5>Tukang kebun</h5>
                                <P>Pria
                                <p>Gaji awal 800 ribu
                                <p>Niat kerja, rajin, pekerja keras
                                <p>uang makan 15 ribu perhari
                                <p>ada mess
                                <p>Lokasi Jogja Sleman</p>
                            
                        </div>
                             
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>

                    </div>
    </body>
</html>
