
<%-- 
    Document   : about
    Created on : May 24, 2016, 6:20:19 PM
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
                            <li><a  href="LamanAdmin.jsp" data-hover="HOME">HOME</a></li> 
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
                        <p> Jl.kedawung No.170, Nologaten, Catur Tunggal, Depok, Sleman, Yogyakarta</p> </div> </div>

                <br>
                <br>
                <br>
                <br>

                <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">A.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">PROFIL PERUSAHAAN</span></b></div>
            <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm;  text-align: justify;">
            </div>
            <div class="MsoListParagraphCxSpMiddle" style="line-height: 22px; margin: 0cm 0cm 0cm 1cm; margin-right: 1cm; text-align: justify; text-indent: 35.45pt;">
                <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;">EDI DAYA GROUP&nbsp;&nbsp;adalah perusahaan yang bergerak di bidang jasa penyalur tenaga kerja.&nbsp;&nbsp;Perusahaan ini berdiri didorong oleh keinginan untuk menjadi jembatan bagi tenaga kerja dan pemilik usaha.&nbsp;</span></div>
            <div class="MsoListParagraphCxSpMiddle" style="line-height: 22px; margin: 0cm 0cm 0cm 1cm; margin-right: 1cm;text-align: justify; text-indent: 35.45pt;">
                <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;">Saat ini banyak sekali muncul masalah ketidakpuasan pemilik usaha terhadap tenaga kerja yang kurang terampil dan kurang bertanggung jawab. Pemilik usaha pun terkadang sedikit kesulitan dan kekurangan waktu untuk dapat melakukan perekrutan tenaga kerja secara mandiri.</span></div>
            <div class="MsoListParagraphCxSpMiddle" style="line-height: 22px; margin: 0cm 0cm 0cm 1cm; margin-right: 1cm;text-align: justify; text-indent: 35.45pt;">
                <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;">Selain itu masalah juga banyak datang dari sisi calon tenaga kerja. Di mana calon tenaga kerja kesulitan untuk mencari informasi lowongan pekerjaan yang sesuai dengan keahlian dan minat mereka, sehingga banyak dari mereka kemudian menjadi pengangguran.&nbsp;</span><span lang="EN-US" style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;">Jika berbicara mengenai pengangguran mungkin sebagian besar mengatakan bahwa itu disebabkan karena kurangnya keilmuan yang berarti bi</span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;">sa</span><span lang="EN-US" style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;">&nbsp;dikatakan mereka tidak berpendidikan. Namun faktanya tidak semua orang yang menganggur adalah mereka yang tidak berpendidikan.&nbsp;</span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;">Bahkan tidak sedikit dari pengangguran justru memiliki kemampuan kerja yang unggul.</span></div>

            <div class="MsoListParagraphCxSpMiddle" style="line-height: 22px; margin: 0cm 0cm 0cm 1cm; margin-right: 1cm;text-align: justify; text-indent: 35.45pt;">
                <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;">Dari masalah-masalah tersebutlah kemudian kami melihat ada kesempatan dan peluang untuk membangun sebuah usaha yang bermanfaat bagi semua pihak. Kami memberikan solusi bagi pemilik usaha untuk memperoleh tenaga kerja dengan mudah tanpa menghabiskan banyak tenaga dan biaya. Di sisi lain kami juga membuka jalan bagi calon tenaga kerja untuk mendapatkan pekerjaan guna melanjutkan kehidupan mereka. Harapan kami ke depan kami dapat memenuhi kebutuhan akan tenaga kerja dan sekaligus mengurangi angka pengangguran.</span>
                <br>
                <br>

                <div class="MsoListParagraphCxSpMiddle" style="line-height: 22px; margin: 0cm 0cm 0cm 1cm; text-align: justify; text-indent: 35.45pt;">
                    <br></div>
                <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 24px;"></span><br>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">B.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">ALAMAT KANTOR</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 127.6pt; text-align: justify; text-indent: -99.25pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Alamat Kantor&nbsp;&nbsp;&nbsp;&nbsp;: jl.kedawung No.170, Nologaten, Catur Tunggal, Depok, Sleman, Yogyakarta</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Telp.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; 0274-2800589 /&nbsp;082226585048/ 085601987983</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Pin BB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp; 5d1a53dc</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Web.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp; edidayagroup.com</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">C.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">VISI MISI PERUSAHAAN</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Visi:</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Menjadi perusahaan yang mampu memberikan pelayanan terbaik dalam bidangnya.</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Misi:</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="line-height: normal; margin-left: 46.35pt;margin: 0cm 0cm 0cm 49.65pt; text-align: justify; text-indent: -21.3pt;">
                    <span style=" font-family: 'Times New Roman', serif; font-size: 12pt;">1.<span style="font-family: 'Times New Roman'; font-size: 7pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=" font-family: 'Times New Roman', serif; font-size: 12pt;">Memberikan kontribusi yang nyata pada dunia usaha.</span><span style="font-family: 'Times New Roman', serif; font-size: 12pt;"></span></div>
                <div class="MsoListParagraphCxSpMiddle" style="line-height: normal; margin-left: 46.35pt;margin: 0cm 0cm 0cm 49.65pt; text-align: justify; text-indent: -21.3pt;">
                    <span style=" font-family: 'Times New Roman', serif; font-size: 12pt;">2.<span style="font-family: 'Times New Roman'; font-size: 7pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=" font-family: 'Times New Roman', serif; font-size: 12pt;">Membantu Program Pemerintah dalam membuka lapangan kerja untuk mengurangi angka pengangguran.</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="line-height: normal; margin-left: 46.35pt;margin: 0cm 0cm 0cm 49.65pt; text-align: justify; text-indent: -21.3pt;">
                    <span style=" font-family: 'Times New Roman', serif; font-size: 12pt;">3.<span style="font-family: 'Times New Roman'; font-size: 7pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=" font-family: 'Times New Roman', serif; font-size: 12pt;">Tidak hanya berorientasi pada keuntungan pribadi, tetapi lebih mengedepankan pelayanan yang terbaik bagi dunia usaha dan calon tenaga kerja.</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="line-height: normal; margin: 0cm 0cm 0cm 49.65pt; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">D.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">TENAGA KERJA YANG DI TAWARKAN</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Berikut ini adalah daftar tenaga kerja yang kami salurkan:</span></div>
                <div class="MsoListParagraphCxSpFirst" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Administrasi Perkantoran.</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Tenaga Perhotelan</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Pramuniaga</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Satpam.</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Tenaga Restoran (Waiter,Waitress,Barista,dll)</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Tenaga Pabrik</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Kasir</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Supir Pribadi</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Warung Makan</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Office Boy (OB)/ Cleaning Service</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Driver</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Cafe dan Salon Spa</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Percetakan</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Sablon</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Karyawan Toko</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Tenaga Tukang</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Tenaga Laundry</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Jaga Counter</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Jaga Kost</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Pembantu Rumah Tangga (PRT)</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Baby Sitter</span></div>
                <div class="MsoListParagraphCxSpLast" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Perawat Jompo/Lansia</span></div>
                     <div class="MsoListParagraphCxSpLast" style="margin-left: 49.65pt; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">-Dan lain-lain</span></div>
                <div class="MsoNormal" style="text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpFirst" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">E.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">AREA PENYALURAN TENAGA KERJA</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Kami memiliki jaringan yang sangat luas, dan kami terus berusaha untuk memperluas area penyaluran tenaga kerja. Saat ini kami menyalurkan tenaga kerja ke daerah sebagai berikut: Yogyakarta, Magelang, Wonosobo, Temanggung, Semarang, Klaten, Solo, Purwokerto, Kebumen, Jawa Timur, Jawa Barat, JABODETABEK, dan Luar Jawa.</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">F.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">BIAYA ADMINISTRASI</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Biaya administrasi pengambilan tenaga kerja dari Edi Daya Group adalah sebagai beriku:</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpFirst" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">1.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Pembantu Rumah Tangga Yogyakarta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;&nbsp;&nbsp;700.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">2.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Pembantu Rumah Tangga Luarkota (Kota Kecil)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;850.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">3.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Pembantu Ruman Tangga Luar Kota (Jabar/Jatim) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;1.000.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">4.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Pembantu Rumah Tangga Luar Pulau Jawa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;2.500.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">5.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Baby sister/Rukti Yogyakarta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;850.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">6.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Baby sister/Rukti Luarkota (Kota Kecil)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;1.000.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">7.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Baby sister/Rukti Luar Kota (Jabar/Jatim)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;1.200.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">8.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Baby sister/Rukti Luar Pulau Jawa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;2.500.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">9.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Waiter, Pramuniaga, sopir, satpam (Yogyakarta)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;450.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">10.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Waiter, Pramuniaga, sopir, satpam (Luar Kota Kecil)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;750.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">11.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Waiter, Pramuniaga, sopir, satpam Luar Kota(Jabar/Jatim)&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp; 1.000.000</span></div>
                <div class="MsoListParagraphCxSpLast" style="margin-left: 46.35pt; text-align: justify; text-indent: -18pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">12.<span style="font-family: 'Times New Roman'; font-size: 7pt; line-height: normal;">&nbsp;&nbsp;</span></span><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Waiter, Pramuniaga, sopir, satpam (Luar Pulau)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rp&nbsp;&nbsp;1.500.000</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Cara Pembayaran:</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">&nbsp;Pembayaran dapat dilakukan secara cash dan transfer ke :</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">BRI Unit Prambanan</span></b></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">No. Rek. 3066 01 024587 538</span></b></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">a.n Ratna Nur Hidayah</span></b></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <br></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">atau</span></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <br></div>
                <div align="center" class="MsoListParagraphCxSpFirst" style="margin-left: 1cm; text-align: center;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">BCA Sudirman</span></b></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">No. 0373295253</span></b></div>
                <div align="center" class="MsoListParagraphCxSpLast" style="margin-left: 1cm; text-align: center;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">a.n Edi Sugiyanto</span></b></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <br></div>
                <div align="center" class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: center;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">G.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">GARANSI</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Atas dasar keinginan kami memberikan pelayanan yang memuaskan bagi pengguna jasa/pemilik usaha, maka setiap kali kami menyalurkan tenaga kerja kami memberikan garansi 2 bulan 2 kali ganti. Garansi ini memberikan perlindungan kepada pengguna jasa apabila tenaga kerja tidak betah dan mengundurkan diri sebelum masa kerjanya mencapai 2 bulan, maka kami siap mencarikan tenaga kerja pengganti tanpa tambahan biaya administrasi, hanya kami kenakan biaya transpot untuk pengiriman tenaga kerja. Penggantian tenaga kerja ini kami lakukan sebanyak 2 kali selama masa garansi.</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">H.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">SISTEM PEREKRUTAN</span></b></div>
                <div class="MsoListParagraphCxSpLast" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Dalam perekrutan tenaga kerja yang akan kami tempatkan pada pemilik usaha kami bersedia memberikan informasi yang jelas tentang identitas tenaga kerja, seperti Fotocopy KTP, Fotocopy Ijazah, Fotocopy Kartu Keluarga dan informasi lain yang dibutuhkan oleh pemilik usaha.</span></div>
                <div class="MsoNormal" style="text-align: justify;">
                    <br></div>
                <div class="MsoListParagraphCxSpFirst" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">I.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">SURAT KESEPAKATAN</span></b></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Demi menjaga kepercayaan dan keamanan bagi pihak Edi Daya Group, Tenaga kerja dan Pengguna jasa/Pemilik usaha, maka setiap kami mengirimkan tenaga kerja, kami akan buatkan surat kesepakatan antara semua pihak.&nbsp;&nbsp;Hal ini dilakukan untuk mencegah adanya kemungkinan buruk yang tidak diinginkan.</span></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: 1cm;">
                    <br></div>
                <div class="MsoListParagraphCxSpMiddle" style="margin-left: 1cm; text-align: justify; text-indent: -1cm;">
                    <b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">J.<span style="font-family: 'Times New Roman'; font-size: 7pt; font-weight: normal; line-height: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">PENUTUP</span></b></div>
                <div class="MsoListParagraphCxSpLast" style="margin-left: 1cm; text-align: justify; text-indent: 35.45pt;">
                    <span style="font-family: 'Times New Roman', serif; font-size: 12pt; line-height: 18px;">Demikian gambaran informasi tentang EDI DAYA GROUP.&nbsp;Apabila masih ada masalah-masalah yang ingin ditanyakan dapat menghubungi nomor telepon yang tercantum di atas. Dengan adanya perkenalan singkat ini kami berharap dapat menjalin kerjasama yang baik dengan&nbsp;&nbsp;Bapak/Ibu pemilik usaha.</span></div>
            </div>
            <div style='clear: both;'></div>
            <br>
            <br>
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



