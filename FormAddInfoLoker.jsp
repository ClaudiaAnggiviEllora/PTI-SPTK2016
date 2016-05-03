<%-- 
    Document   : FormSignUpApp
    Created on : Apr 5, 2016, 10:07:05 PM
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



                            <li><a class="active" data-hover="REGISTER">REGISTER <select class="sub-menu"><option  value="applicant"> Applicant (Tenaga Kerja)</option>
                                        <option value="customer">Customer (Pengguna Jasa)</option>
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


        <!--/form registrasi identitas-->
        <div class="section-contact">
            <div class="container">
                <h2 class="second-head">Tambah Informasi Lowongan Kerja</h2>
                <div class="contact-main">


                    
                    
                    <div class="col-md-6 contact-grid">
                        <form action="servletLoker" name="myform" id="myform" method="get">
                            
                            <p class="your-para">Jenis Pekerjaan :</p>
                            
                            <select name="jenisPekerjaan">
                        <option value=" " selected disabled="">--pilih jenis pekerjaan--</option>
                        <option value="Baby Sitter">Baby Sitter</option>
                        <option value="Satpam">Satpam</option>
                        <option value="Pramuniaga">Pramuniaga</option>
                        <option value="Administrasi perkantoran">Administrasi Perkantoran</option>
                        <option value="Tenaga Restoran">Tenaga Restoran (waiters,Barista,dll)</option>
                        <option value="Supir pribadi">Supir Pribadi</option>
                        <option value="Kasir">Kasir</option>
                        <option value="Tenaga Pabrik">Tenaga Pabrik</option>
                        <option value="Karyawan Rumah Makan">Karyawan Rumah Makan</option>
                        <option value="Office Boy / Cleaning Service">Office Boy / Cleaning Service</option>
                        <option value="Driver">Driver</option>
                        <option value="Karyawan cafe dan Salon spa">Karyawan cafe dan salon spa</option>
                        <option value="Karyawan percetakan">Karyawan percetakan</option>
                        <option value="Karyawan Sablon">Kayawan Sablon</option>
                        <option value="Karyawan Toko Besi"> Karyawan Toko Besi</option>
                        
                        <option value="Tenaga Tukang">Tenaga Tukang</option>
                        <option value="Tenaga Laundry">Tenaga Laundry</option>
                        <option value="Jaga Counter">Jaga Counter</option>
                        <option value="Jaga Kost">Jaga Kost</option>
                        <option value="Pembantu Rumah Tangga">Pembantu Rumah Tangga</option>
                        <option value="Perawat Jompo/Lansia">Perawat Jompo/Lansia</option>
                             </select>
                            <p class="your-para">Job(nama pekerjaan) :</p>
                            <input type="text" name="job"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">	
                            <p class="your-para">Owner :</p>
                            <input type="text" name="owner" value="isi nama lengkap" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">no.KTP :</p>
                            <input type="text" name="noKTP"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">NPWP :</p>
                            <input type="text" name="NPWP"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Nomor Telepon :</p>
                            <input type="text" name="noTelp"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                             <p class="your-para">Nama Perusahaan :</p>
                            <input type="text" name="perusahaan"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Daerah Penempatan :</p>
                            <input type="text" name="penempatan"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Syarat :</p>
                            <input type="text" name="syarat"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Fasilitas :</p>
                            <input type="text" name="fasilitas"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Keterangan :</p>
                            <input type="text" name="keterangan"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            
  
                            <div class="send">
                                <input type="submit" value="REGISTRASI" >
                            </div>
                        </form>
                        <script language="JavaScript" type="text/javascript">//<![CDATA[
//You should create the validator only after the definition of the HTML form
                            var frmvalidator = new Validator("myform");
                            frmvalidator.addValidation("namaAppl", "req", "masukkan nama lengkap");
                            frmvalidator.addValidation("namaAppl", "maxlen=40", "maksimal nama 40 karakter");
                            frmvalidator.addValidation("namaAppl", "alpha", "nama hanya mengandung huruf");

                            frmvalidator.addValidation("passwordUser", "req", "masukkan password");
                            frmvalidator.addValidation("passwordUser", "maxlen=15", "password maksimal 15 karakter");
                            frmvalidator.addValidation("passwordUser", "minlen=8", "password minimal 8 karakter");

                            frmvalidator.addValidation("nama", "req", "masukkan nama");
                            frmvalidator.addValidation("nama", "maxlen=20", "maksimal nama 20 karakter");
                            frmvalidator.addValidation("nama", "alpha", "nama harus mengandung huruf dan tidak menggunakan spasi");

                            frmvalidator.addValidation("alam", "maxlen=50");
                            frmvalidator.addValidation("alam", "req", "masukkan alamat");

                            frmvalidator.addValidation("ktp", "numeric");
                            frmvalidator.addValidation("ktp", "req", "masukkan no ktp");
                            frmvalidator.addValidation("ktp", "maxlen=16", "maksimal no ktp 16 karakter");
                            frmvalidator.addValidation("ktp", "minlen=16", "minimal no ktp 16 karakter");
                            frmvalidator.addValidation("ktp", "numeric", "username tidak boleh mengandung huruf");

                            frmvalidator.addValidation("hp", "numeric");
                            frmvalidator.addValidation("hp", "req", "masukkan no telp");
                            frmvalidator.addValidation("hp", "minlen=6", "minimal no telepon yang dimasukan 6 angka");
                            frmvalidator.addValidation("hp", "numeric", "no telepon tidak boleh mengandung huruf");

//]]></script>


                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

    </body>
</html>
<%-- 
    Document   : FormAddInfoLoker
    Created on : May 3, 2016, 8:46:42 PM
    Author     : laura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
