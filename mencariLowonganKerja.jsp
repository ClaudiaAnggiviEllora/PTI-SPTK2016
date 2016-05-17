<%-- 
    Document   : formdaftar
    Created on : May 10, 2016, 4:55:32 PM
    Author     : HP
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
                            <li><a class="active" data-hover="PASANG IKLAN">PASANG IKLAN <select class="sub-menu"><option  value="customer">Customer (Pengguna Jasa)</option>
                                        <option value="applicant">Applicant (Tenaga Kerja)</option>
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
        
        <!--/form pasang loker-->
        <div class="section-contact">
            <div class="container">
                <h2 class="second-head">Mendaftar Kerja</h2>
                <div class="contact-main">
                    <div class="col-md-6 contact-grid">
                        <form action="servletApplicant" name="myform" id="myform" >
                            <p class="your-para">Nama Lengkap :</p>
                            <input type="text" name="namaAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">	
                            <p class="your-para">Jenis Pekerjaan :</p>
                            <input type="text" name="jenisPekerjaanAppl" value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Nomor Telpon :</p>
                            <input type="text" name="noTelpAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Jenis Kelamin :</p>
                            <input type="text" name="jenisKelaminAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Nomor Telepon :</p>
                            <input type="text" name="noTelp"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Alamat KTP :</p>
                            <input type="text" name="alamatKTPAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Alamat Tinggal :</p>
                            <input type="text" name="alamatTinggalAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Email :</p>
                            <input type="text" name="emailAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">agamaAppl :</p>
                            <input type="text" name="agamaAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Golongan Darah :</p>
                            <input type="text" name="golDarAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Penyakit Kronis :</p>
                            <input type="text" name="penyakitKronisAppl"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">Nama Ayah :</p>
                            <input type="text" name="namaAyah"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">Nama Ibu :</p>
                            <input type="text" name="namaIbu"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">TTL Ayah :</p>
                            <input type="text" name="TTLAyah"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">TTL Ibu :</p>
                            <input type="text" name="TTLIbu"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">alamat Ayah :</p>
                            <input type="text" name="alamatAyah"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">Alamat Ibu :</p>
                            <input type="text" name="alamatIbu"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">No.Telpon Ayah :</p>
                            <input type="text" name="noTelpAyah"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">No.Telpon Ibu :</p>
                            <input type="text" name="noTelpIbu"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">Status Pernikahan :</p>
                            <input type="text" name="statusPernikahan"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">Nama Pasangan :</p>
                            <input type="text" name="namaPasangan"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">TTL Pasangan :</p>
                            <input type="text" name="TTLPasangan"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">Alamat Pasangan :</p>
                            <input type="text" name="alamatPasangan"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">Pendidikan Terakhir Pasangan :</p>
                            <input type="text" name="pendidikanTerakhirPasangan"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <p class="your-para">Pekerjaan Pasangan :</p>
                            <input type="text" name="pekerjaanPasangan"value="" onfocus="this.value = '';" onblur="if (this.value === '') {
                                        this.value = '';
                                        }">
                            <div class="send">
                                <input type="submit" value="Daftar" >
                            </div>
                        </form>
                        <script language="JavaScript" type="text/javascript">//<![CDATA[
//You should create the validator only after the definition of the HTML form
                            var frmvalidator = new Validator("myform");
                            frmvalidator.addValidation("job", "req", "masukkan job");
                            frmvalidator.addValidation("job", "maxlen=40", "maksimal nama 40 karakter");
                            frmvalidator.addValidation("job", "alpha", "job hanya mengandung huruf");

                            frmvalidator.addValidation("owner", "req", "masukkan job");
                            frmvalidator.addValidation("owner", "maxlen=40", "maksimal nama 40 karakter");
                            frmvalidator.addValidation("owner", "alpha", "owner hanya mengandung huruf");
                            frmvalidator.addValidation("ktp", "numeric");

                            frmvalidator.addValidation("ktp", "req", "masukkan no ktp");
                            frmvalidator.addValidation("ktp", "maxlen=16", "maksimal no ktp 16 karakter");
                            frmvalidator.addValidation("ktp", "minlen=16", "minimal no ktp 16 karakter");
                            frmvalidator.addValidation("ktp", "numeric", "nomor ktp tidak boleh mengandung huruf");

                            frmvalidator.addValidation("NPWP", "numeric");
                            frmvalidator.addValidation("NPWP", "req", "masukkan no ktp");
                            frmvalidator.addValidation("NPWP", "maxlen=16", "maksimal no ktp 16 karakter");
                            frmvalidator.addValidation("NPWP", "minlen=16", "minimal no ktp 16 karakter");
                            frmvalidator.addValidation("NPWP", "numeric", "NPWP tidak boleh mengandung huruf");

                            frmvalidator.addValidation("telp", "numeric");
                            frmvalidator.addValidation("telp", "req", "masukkan no telp");
                            frmvalidator.addValidation("telp", "minlen=6", "minimal no telepon yang dimasukan 6 angka");
                            frmvalidator.addValidation("telp", "numeric", "no telepon tidak boleh mengandung huruf");

//]]></script>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

    </body>
</html>













