<%-- 
    Document   : FormSignUpApp
    Created on : Apr 5, 2016, 10:07:05 PM
    Author     : laura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <a href="FormSignUpApp.jsp"></a>
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
 <style type="text/css" >
            BODY, P,TD{ font-family: Arial,Verdana,Helvetica, sans-serif; font-size: 10pt }
            A{font-family: Arial,Verdana,Helvetica, sans-serif;}
            B {	font-family : Arial, Helvetica, sans-serif;	font-size : 12px;	font-weight : bold;}
            .error_strings{ font-family:Verdana; font-size:14px; color:#660000;}
        </style><script language="JavaScript" src="gen_validatorv4.js"
        type="text/javascript" ></script>
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
                <h2 class="second-head">Registrasi Applicant (Tenaga Kerja)</h2>
                <div class="contact-main">

                    <div class="col-md-6 contact-grid">
                        <form action="testApplicant" name="myform" id="myform" method="get">
                            <h2>Identitas Diri</h2>
                            <p class="your-para">Username :</p>
                            <input type="text" name="userName" value="isi username tanpa spasi" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Password :</p>
                            <input type="password" name="passwordUser"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">	
                            <p class="your-para">Nama :</p>
                            <input type="text" name="namaAppl"value="isi nama lengkap" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Tempat Tanggal Lahir:</p>
                            <input type="text" name="TTLAppl"value="isi tempat tanggal lahir" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Jenis Kelamin :</p>
                            <input type="radio" name ="jenisKelamin" value ="Laki-laki"> Laki-laki<br>
                            <input type="radio" name ="jenisKelamin" value ="Perempuan"> Perempuan<br>
<!--                            <input type="text" name="jenisKelamin"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">-->
                            <p class="your-para">Alamat Tinggal:</p>
                            <input type="text" name="alamatTinggal" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Alamat KTP :</p>
                            <input type="text" name="alamatKTP" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">No.Telepon :</p>
                            <input type="text" name="telepon" value="contoh: 081234567890" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Email :</p>
                            <input type="text" name="email"value="Contoh: example1@gmail.com" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Agama :</p>
                            <input type="text" name="agama"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">nomor KTP :</p>
                            <input type="text" name="noKTP"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Golongan Darah :</p>
                            <input type="text" name="golDar" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Penyakit Kronis:</p>
                            <input type="text" name="penyakit" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                                    <p class="your-para">Di isi bila perlu *)</p>
                             <p class="your-para">Jenis Pekerjaan yang diinginkan:</p>
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
                        <option value="Karyawan Toko Besi"> Karyawan Toko</option>
                        
                        <option value="Tenaga Tukang">Tenaga Tukang</option>
                        <option value="Tenaga Laundry">Tenaga Laundry</option>
                        <option value="Jaga Counter">Jaga Counter</option>
                        <option value="Jaga Kost">Jaga Kost</option>
                        <option value="Pembantu Rumah Tangga">Pembantu Rumah Tangga</option>
                        <option value="Perawat Jompo/Lansia">Perawat Jompo/Lansia</option>
                             </select>

<br>
<br>
                            <!--form data keluarga dan lingkungan-->
                            <h2>Data Keluarga dan Lingkungan</h2>
                            <p class="your-para">Status Pernikahan :</p>
                             <input type="radio" name ="statusPernikahan" value ="Belum Menikah"> Belum Menikah<br>
                            <input type="radio" name ="statusPernikahan" value ="Sudah Menikah"> Sudah Menikah<br>

                            <br><br>
                            <p> <strong>Data Istri/Suami *)</strong></p> <br>
                            <p class="your-para">Nama Lengkap :</p>
                            <input type="text" name="namaPasangan" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Tempat Tanggal Lahir:</p>
                            <input type="text" name="TTLPasangan" value="" onfocus="this.value = '';" onblur="if (this.value = '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Alamat :</p>
                            <input type="text" name="alamatPasangan" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Pendidikan Terakhir :</p>
                            <input type="text" name="pendidikanPasangan"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Pekerjaan :</p>
                            <input type="text" name="pekerjaanPasangan"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <br>
                            <br>
                            <p> <strong>Data Anak *)</strong></p><br>
                            <p class="your-para">Nama Lengkap Anak: </p>
                            <p>1</p> <input type="text" name="namaAnak1"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p>2</p> <input type="text" name="namaAnak2" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Tempat Tanggal Lahir Anak: </p>
                            <p>1</p> <input type="text" name="TTLAnak1"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p>2</p> <input type="text" name="TTLAnak2" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Pendidikan/Pekerjaan Anak: </p>
                            <p>1<input type="text" name="pendidikanAnak1"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }"></p> 
                            <p>2<input type="text" name="pendidikanAnak2" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }"></p> 
                                    <br>
                                    <br>

                            <p> <strong>Data Ayah dan Ibu *)</strong></p><br>
                            <p><strong>Data Ayah</strong></p>
                            <p class="your-para">Nama Lengkap: </p>
                            <input type="text" name="namaAyah"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Tempat Tanggal Lahir: </p>
                            <input type="text" name="TTLAyah"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Alamat :</p>
                            <input type="text" name="alamatAyah"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">No.Telepon :</p>
                            <input type="text" name="telpAyah"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">  

                            <br>
                            <br>
                            <p><strong>Data Ibu</strong></p>
                            <p class="your-para">Nama Lengkap: </p>
                            <input type="text" name="namaIbu"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Tempat Tanggal Lahir: </p>
                            <input type="text" name="TTLIbu"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Alamat :</p>
                            <input type="text" name="alamatIbu"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">No.Telepon :</p>
                            <input type="text" name="telpIbu"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">  
<!--Riwayat Pendidikan-->
                            <br>
                            <br>
                            <h2>Riwayat Pendidikan</h2><br>
                            <p><strong>TINGKAT</strong></p>
                            
                             <p class="your-para"><strong>SD</strong></p>
                            <p class="your-para">Nama sekolah/tempat/jurusan/tahun masuk-sampai dengan: </p>
                            <input type="text" name="SD" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }"> 
                            <p class="your-para"><strong>SMP</strong></p>
                            <p class="your-para">Nama sekolah/tempat/jurusan/tahun masuk-sampai dengan</p>
                            <input type="text" name="SMP" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }"> 
                            <p class="your-para"> <strong>SMA</strong></p>
                            <p class="your-para">Nama sekolah/tempat/jurusan/tahun masuk-sampai dengan</p>
                            <input type="text" name="SMA" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }"> 
                                    <p class="your-para"><strong>Universitas</strong></p>
                            <p class="your-para">Nama universitas/tempat/jurusan/tahun masuk-sampai dengan</p>
                            <input type="text" name="UNIV" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }"> 
                                       <p class="your-para"><strong>Akademi</strong></p>
                                <p class="your-para">Nama akademi/tempat/jurusan/tahun masuk-sampai dengan</p>
                                <input type="text" name="AKADEMI" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = '';
                                        }"> 
      <p><strong>Pendidikan Non Formal</strong></p>
      <p class="your-para">Nama bidang jasa/tempat/lama kursus/tahun</p>
                                <input type="text" name="nonFormal" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = '';
                                        }">
  
                            <div class="send">
                                <input type="submit" value="REGISTRASI" >
                            </div>
                        </form>
                        <script language="JavaScript" type="text/javascript">//<![CDATA[
//You should create the validator only after the definition of the HTML form
                            var frmvalidator = new Validator("myform");
                            frmvalidator.addValidation("userName", "req", "masukkan username");
                            frmvalidator.addValidation("userName", "maxlen=40", "maksimal nama 40 karakter");
                            frmvalidator.addValidation("userName", "alnum", "nama tidak boleh ada spasi");
                            
                            frmvalidator.addValidation("email", "req", "masukkan alamat email");
                            frmvalidator.addValidation("email", "maxlen=40", "maksimal nama 30 karakter");
                            frmvalidator.addValidation("email", "email", "email harus menganudng @ ex: abcd@gmial.com");
                            
                            frmvalidator.addValidation("namaAppl", "req", "masukkan nama lengkap");
                            frmvalidator.addValidation("namaAppl", "maxlen=40", "maksimal nama 40 karakter");
                            frmvalidator.addValidation("namaAppl", "alpha_s", "nama hanya mengandung huruf");

                            frmvalidator.addValidation("passwordUser", "req", "masukkan password");
                            frmvalidator.addValidation("passwordUser", "maxlen=15", "password maksimal 20 karakter");
                            frmvalidator.addValidation("passwordUser", "minlen=8", "password minimal 8 karakter");

                            frmvalidator.addValidation("TTLAppl", "req", "masukkan tempat tanggal lahir");
                            frmvalidator.addValidation("TTLAppl", "maxlen=50", "maksimal tempat tanggal lahir 50 karakter");
                            

                            frmvalidator.addValidation("jenisKelamin", "req","masukan pilihan jenis kelamin");
                           
                            frmvalidator.addValidation("alamatTinggal", "req", "masukan alamat tinggal");
                            frmvalidator.addValidation("alamatTinggal", "maxlen=65", "maksimal alamat Tinggal 65 karakter");
                           
                            frmvalidator.addValidation("alamatKTP", "req", "masukan alamat KTP");
                            frmvalidator.addValidation("alamatKTP", "maxlen=65", "maksimal alamat KTP 65 karakter");
                           
                            frmvalidator.addValidation("golDar", "req","masukan pilihan jenis kelamin");
                           
                           frmvalidator.addValidation("agama", "req", "masukan agama");
                            frmvalidator.addValidation("agama", "alpha_s", "agama hanya mengandung huruf");
                            
                            frmvalidator.addValidation("noKTP", "req", "masukan nomor KTP");                           
                            frmvalidator.addValidation("noKTP", "maxlen=16", "maksimal no ktp 16 karakter");
                            frmvalidator.addValidation("noKTP", "minlen=16", "minimal no ktp 16 karakter");
                            frmvalidator.addValidation("noKTP", "numeric", "Nomor KTP tidak boleh mengandung huruf");

                            
                            frmvalidator.addValidation("noTelp", "req", "masukkan nomor telepon");
                            frmvalidator.addValidation("noTelp", "maxlen=13", "maksimal no telepon yang dimasukan 13 angka");
                            frmvalidator.addValidation("noTelp", "numeric", "no telepon tidak boleh mengandung huruf");

//]]></script>


                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

    </body>
</html>
