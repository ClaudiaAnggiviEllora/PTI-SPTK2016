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
		<h2 class="second-head">Registrasi Applicant (Tenaga Kerja)</h2>
				<div class="contact-main">
					
					<div class="col-md-6 contact-grid">
						<form>
                                                    <h2>Identitas Diri</h2>
							<p class="your-para">Nama :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Password :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <p class="your-para">Jenis Pekerjaan yang di inginkan:</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value = '') {this.value ='';}">
							<p class="your-para">No.Telepon :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value =='') {this.value ='';}">
                                                        <p class="your-para">Jenis Kelamin :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Alamat KTP :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <p class="your-para">Alamat Tinggal:</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Email :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <p class="your-para">Agama :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Golongan Darah :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <p class="your-para">Penyakit Kronis:</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <br>
                                                        <br>
                                                        <!--form data keluarga dan lingkungan-->
                                                        <h2>Data Keluarga dan Lingkungan</h2>
                                                        <p class="your-para">Status Pernikahan :</p>
                                                        
                                                        Sudah Menikah <input type="checkbox" name="Sudah Menikah" value="sudahMenikah" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        Belum Menikah <input type="checkbox" name="Belum Menikah" value="belumMenikah" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <br><br>
                                                        <p> <strong>Data Istri/Suami *)</strong></p><br>
                                                        <p class="your-para">Nama Lengkap :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <p class="your-para">Tempat Tanggal Lahir:</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value = '') {this.value ='';}">
							<p class="your-para">Alamat :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value =='') {this.value ='';}">
                                                        <p class="your-para">Pendidikan Terakhir :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Pekerjaan :</p>
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <br>
                                                        <br>
                                                        
                                                         
                                                        <p> <strong>Data Ayah dan Ibu *)</strong></p><br>
                                                        <p class="your-para">Nama Lengkap: </p>
							Ayah <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							Ibu <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Tempat Tanggal Lahir: </p>
                                                        Ayah <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							Ibu <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Alamat :</p>
							Ayah <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							Ibu <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">No.Telepon :</p>
							Ayah <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">  
							Ibu <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
                                                        <br>
                                                        <br>
                                                        
                                                        <div class="send">
								<input type="submit" value="REGISTRASI" >
							</div>
						</form>
					</div>
						<div class="clearfix"> </div>
			      </div>
	       </div>
     </div>

    </body>
</html>
