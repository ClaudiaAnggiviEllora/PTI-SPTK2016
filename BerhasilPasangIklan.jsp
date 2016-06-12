<%-- 
    Document   : FormPasangIklan
    Created on : May 3, 2016, 8:46:42 PM
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
                            <li><a  href="LamanCustomer.jsp" data-hover="Home">Home</a></li> 
                            <li><a  href="LamanProfileCust.jsp" data-hover="Profile Customers">Profile Customer</a></li>
                            <li><a  href="EditProfileCust.jsp" data-hover="Edit Data">Edit Data</a></li>
                            <li><a  href="FormPasangIklan.jsp" class="active" data-hover="Pasang Iklan">Pasang Iklan</a></li>                  
                            <li><a  href="LogoutProccess.jsp" data-hover="Logout">Logout</a></li>
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
                        

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>


        <!--/form registrasi identitas-->
        <div class="section-contact">
            <div class="container">
                <h1>Pasang Iklan Berhasil! Silahkan tunggu konfirmasi dari admin. Terima Kasih</h1>
                <h2 class="second-head">Pasang Iklan</h2>
                <div class="contact-main">


                    <div class="col-md-6 contact-grid">
                        <form action="ServletLoker2" name="myform" id="myform" method="post"> 
                            <p class="your-para">Tanggal update :</p>
                            <input type="date" name="tanggal"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">	
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
                                <option value="Karyawan Toko"> Karyawan Toko</option>

                                <option value="Tenaga Tukang">Tenaga Tukang</option>
                                <option value="Tenaga Laundry">Tenaga Laundry</option>
                                <option value="Jaga Counter">Jaga Counter</option>
                                <option value="Jaga Kost">Jaga Kost</option>
                                <option value="Pembantu Rumah Tangga">Pembantu Rumah Tangga</option>
                                <option value="Perawat Jompo/Lansia">Perawat Jompo/Lansia</option>
                                <option value="Dan lain-lain">Dan lain-lain</option>
                            </select>
                            <p class="your-para">Job (spesifik nama pekerjaan) :</p>
                            <input type="text" name="job"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">	
                            <p class="your-para">Owner :</p>
                            <input type="text" name="owner" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">no.KTP :</p>
                            <input type="text" name="noKTP"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">NPWP :</p>
                            <input type="text" name="NPWP"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Nomor Telepon :</p>
                            <input type="text" name="noTelp"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Nama Perusahaan :</p>
                            <input type="text" name="perusahaan"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Daerah Penempatan :</p>
                            <input type="text" name="penempatan"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Syarat :</p>
                            <input type="text" name="syarat"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <p class="your-para">Fasilitas :</p>
                            <input type="text" name="fasilitas"value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">

                            <div class="send">
                                <input type="submit" value="Kirim Iklan" >
                            </div>
                        </form>^
                        <script language="JavaScript" type="text/javascript">//<![CDATA[
//You should create the validator only after the definition of the HTML form
                            var frmvalidator = new Validator("myform");
                            frmvalidator.addValidation("jenisPekerjaan", "req", "pilih jenis pekerjaan");

                            frmvalidator.addValidation("job", "req", "masukan spesifikasi job");
                            frmvalidator.addValidation("job", "maxlen=30", "maksimal nama 30 karakter");
                            frmvalidator.addValidation("job", "alpha_s", "nama pekerjaan hanya mengandung huruf");

                            frmvalidator.addValidation("owner", "req", "masukkan nama pemilik pekerjaan");
                            frmvalidator.addValidation("owner", "maxlen=40", "nama pemilik maksimal 40 karakter");
                            frmvalidator.addValidation("owner", "minlen=4", "nama pemilik minimal 8 karakter");
                            frmvalidator.addValidation("owner", "alpha_s", "nama pemilik hanya mengandung huruf");

                            frmvalidator.addValidation("noKTP", "req", "masukkan nomor KTP");
                            frmvalidator.addValidation("noKTP", "minlen=16", "nomor KTP minimal 16 karakter");
                            frmvalidator.addValidation("noKTP", "numeric", "nomor KTP hanya mengandung angka");

                            frmvalidator.addValidation("NPWP", "numeric", "nomor KTP hanya mengandung angka");
                            frmvalidator.addValidation("NPWP", "req", "masukan Nomor Pokok Wajib Pajak, jika tidak ada berikan tanda '-' ");

                            frmvalidator.addValidation("noTelp", "req", "masukkan nomor telepon");
                            frmvalidator.addValidation("noTelp", "maxlen=13", "maksimal no telepon yang dimasukan 13 angka");
                            frmvalidator.addValidation("noTelp", "numeric", "no telepon tidak boleh mengandung huruf");

                            frmvalidator.addValidation("perusahaan", "req", "masukan nama perusahaan, jika tidak ada isi field dengan tanda - ");

                            frmvalidator.addValidation("penempatan", "req", "masukan nama lokasi penempatan ");
                            frmvalidator.addValidation("syarat", "req", "masukan nama syarat calon pekerja ");
                            frmvalidator.addValidation("syarat", "maxlen=60", "syarat calon pekerja maksimal 60 karakter");
                            frmvalidator.addValidation("fasilitas", "req", "masukan fasilitas terkait gaji dan lain-lain ");
                            frmvalidator.addValidation("fasilitas", "maxlen=60", "fasilitas maksimal 60 karakter");

//]]></script>


                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

    </body>
</html>


