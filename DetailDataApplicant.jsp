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
                            <li><a   href="LamanAdmin.jsp" data-hover="Home">Home</a></li> 
                            <li><a  data-hover="Tambah Data">Tambah Data
                                    <ul><a href="FormAddApplicant.jsp" value="applicant"> Applicant (Tenaga Kerja)</a> </ul>
                                    <ul><a href="FormAddInfoLoker.jsp" value=""> Lowongan Kerja</a> </ul>
                                </a></li>

                            <li><a  data-hover="Lihat Data">Lihat Data
                                    <ul><a class="active" href="LihatDataApplicant.jsp" value="applicant"> Applicant (Tenaga Kerja)</a> </ul>
                                    <ul><a  href="LihatDataCustomer.jsp" value="customers"> Customers</a> </ul>
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
                    
                   
                </div>
            </div>

        </div>
        
        <!--/contact-->
        <div class="section-contact">
            <div class="container">
                <h2 class="second-head">Data Detail Applicant</h2>
                <div class="contact-main">

                    <div class="col-md-6 contact-grid">
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

                            query = "select userName, passwordUser, namaAppl, TTLAppl, jenisKelamin, alamatTinggal, alamatKTP,  telepon, "
                                    + "email, agama, noKTP, goldar, penyakit, jenispekerjaan, statusPernikahan, namaPasangan, "
                                    + "ttlpasangan, alamatPasangan, pendidikanPasangan, pekerjaanPasangan, namaanak1, namaanak2, "
                                    + "ttlanak1, ttlanak2,pendidikanAnak1, pendidikanAnak2, namaAyah, TTLAyah, alamatAyah, "
                                    + "telpAyah, namaIbu, TTLIbu, alamatIbu, telpIbu, SD, SMP, SMA, UNIV, AKADEMI, pendidikanNonFormal, "
                                    + "status from tabelapplicant where userName='" + userName + "' ";
                            resultSet = statement.executeQuery(query);
                            if (resultSet.next()) {
                        %>
                        <h2>Data Diri</h2>
                            <p class="your-para">Username :<%=resultSet.getString("userName")%> </p>
                            <p class="your-para">Password :<%=resultSet.getString("PasswordUser")%> </p>
                            <p class="your-para">Nama :<%=resultSet.getString("namaAppl")%> </p>
                            <p class="your-para">Tempat Tanggal Lahir : <%=resultSet.getString("TTLAppl")%></p>
                            <p class="your-para">Jenis Kelamin :<%=resultSet.getString("jenisKelamin")%> </p> 
                            <p class="your-para">Alamat Tinggal :<%=resultSet.getString("alamatTinggal")%> </p>
                            <p class="your-para">Alamat KTP :<%=resultSet.getString("jenisKelamin")%> </p>
                            <p class="your-para">Telepon : <%=resultSet.getString("telepon")%></p>
                            <p class="your-para">Email : <%=resultSet.getString("email")%></p>
                            <p class="your-para">Agama : <%=resultSet.getString("agama")%></p>
                            <p class="your-para">nomor KTP: <%=resultSet.getString("noKTP")%></p>
                            <p class="your-para">Golongan Darah: <%=resultSet.getString("golDar")%></p>
                            <p class="your-para">Penyakit : <%=resultSet.getString("penyakit")%> </p>
                            <p class="your-para">Jenis Pekerjaan: <%=resultSet.getString("jenisPekerjaan")%> </p>
                            <br>
                            <br>
                            <h2>Data Keluarga dan Lingkungan</h2>
                            <p class="your-para">Status pernikahan : <%=resultSet.getString("statusPernikahan")%></p>
                            <p class="your-para">Nama Pasangan : <%=resultSet.getString("namaPasangan")%></p>
                            <p class="your-para">Alamat Pasangan : <%=resultSet.getString("alamatPasangan")%></p>
                            <p class="your-para">Pendidikan Pasangan: <%=resultSet.getString("pendidikanPasangan")%></p>
                            <p class="your-para">Pekerjaan Pasangan : <%=resultSet.getString("alamatPasangan")%></p>
                            
                            <h2>Data Anak *)</h2>
                            <p class="your-para">Nama Anak </p>
                            <p class="your-para">1: <%=resultSet.getString("namaAnak1")%></p>
                            <p class="your-para">2: <%=resultSet.getString("namaAnak2")%></p>
                            <p class="your-para">Tempat Tanggal Lahir anak  </p>
                            <p class="your-para">1: <%=resultSet.getString("TTLanak1")%></p>
                            <p class="your-para">2: <%=resultSet.getString("TTLanak2")%></p>
                            <p class="your-para">Pendidikan Anak  </p>
                            <p class="your-para">1: <%=resultSet.getString("pendidikanAnak1")%></p>
                            <p class="your-para">2: <%=resultSet.getString("pendidikanAnak2")%></p>
                            <br>
                            <br>
                            <h2>Data Orang Tua</h2>
                            <p class="your-para">Data Ayah  </p>
                            <p class="your-para">nama Ayah: <%=resultSet.getString("namaAyah")%></p>
                            <p class="your-para">TTL: <%=resultSet.getString("TTLAyah")%></p>
                            <p class="your-para">Alamat: <%=resultSet.getString("alamatAyah")%></p>
                            <p class="your-para">Telepon: <%=resultSet.getString("telpAyah")%></p>
                            <br>
                            
                            <p class="your-para">Data Ibu  </p>
                            <p class="your-para">nama Ibu: <%=resultSet.getString("namaIbu")%></p>
                            <p class="your-para">TTL: <%=resultSet.getString("TTLIbu")%></p>
                            <p class="your-para">Alamat: <%=resultSet.getString("alamatIbu")%></p>
                            <p class="your-para">Telepon: <%=resultSet.getString("telpIbu")%></p>
                            <br>
                            <br>
                            <h2>Riwayat Pendidikan</h2>
                            <p class="your-para">SD: <%=resultSet.getString("SD")%></p>
                            <p class="your-para">SMP: <%=resultSet.getString("SMP")%></p>
                            <p class="your-para">SMA: <%=resultSet.getString("SMA")%></p>
                            <p class="your-para">Universitas: <%=resultSet.getString("UNIV")%></p>
                            <p class="your-para">Akademi: <%=resultSet.getString("AKADEMI")%></p>
                            <p class="your-para">Pendidikan Non formal: <%=resultSet.getString("pendidikanNonFormal")%></p>
                            <br>
                            <h2>Status dan penempatan</h2>
                            <p class="your-para">Status Penempatan: <%=resultSet.getString("status")%></p>
                            <br>
                            <br>
                            
<form action="ServletInputPenempatan" method="POST" >
    <h2>Inputkan Penempatan Applicant</h2>
    <p class="your-para">Status Penempatan: <input type="text" name="status" value= <%=resultSet.getString("status")%> onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}"></p>
                            <div class="send">
                                <input type="submit" value="Simpan" >
                            </div>
                        </form>
<%}%>
                        

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>


        <!--/footer-->
        <div class="footer">
            <div class="container">
                <div class="footer-top">
                    <div class="col-md-4 footer-grid">
                        <h4>Get Free Consultation</h4>
                        <ul class="bottom">
                            <li>(888) 123-456-7890</li>
                            <li>Available 24/7</li>
                        </ul>
                    </div>
                    <div class="col-md-4 footer-grid">
                        <h4>Message Us Now</h4>
                        <ul class="bottom">
                            <li><i class="glyphicon glyphicon-home"></i>Available 24/7 </li>
                            <li><i class="glyphicon glyphicon-envelope"></i><a href="mailto:info@example.com">mail@example.com</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 footer-grid">
                        <h4>Address Location</h4>
                        <ul class="bottom">
                            <li><i class="glyphicon glyphicon-map-marker"></i>2901 Glassgow Road, WA 98122-1090 </li>
                            <li><i class="glyphicon glyphicon-earphone"></i>phone: (888) 123-456-7899 </li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="copy">
            <p>&copy; 2016 Legalized. All Rights Reserved | Design By <a href="http://w3layouts.com/">W3layouts</a></p>
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