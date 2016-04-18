<%-- 
    Document   : FormPasangIklan
    Created on : Apr 13, 2016, 3:04:48 AM
    Author     : HP
--%>

<html>
    <head>
        <title>Penyalur Tenaga Kerja</title>
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
        <link href="css/style2.css" rel='stylesheet' type='text/css' />	
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
                            <li><a class="active" href="index.html" data-hover="HOME">Home</a></li> 
                            <li><a href="about.html" data-hover="About">About</a></li>
                            <li><a href="typography.html" data-hover="SERVICES">SERVICES</a></li>
                            <li><a href="areas.html" data-hover="Practise Area">Practise Area </a></li>
                            <li><a href="blog.html" data-hover="BLOG">BLOG</a></li>
                            <li><a href="contact.html" data-hover="CONTACT">Contact</a></li>
                        </ul>
                    </div>
                    <body>
                        <h3>Form Pasang Iklan</h3>
                        <div>
                            <form action="action_page.php">
                                <label for="Job">Job</label>
                                <select id="Job" name="Job">
                                    <option value="adminperkantoran">Admin Perkantoran</option>
                                    <option value="tenagaperhotelan">Tenaga Perhotelan</option>
                                    <option value="pramuniaga">Pramuniaga</option>
                                    <option value="satpam">Satpam</option>
                                    <option value="tenagarestoran">Tenaga Restoran</option>
                                    <option value="tenagapabrik">Tenaga Pabrik</option>
                                    <option value="kasir">Kasir</option>
                                    <option value="supirpribadi">Supir Pribadi</option>
                                    <option value="warungmakan">Warung Makan</option>
                                    <option value="officeboy(OB)/cleaningservice">Office Boy (OB)/Cleanig Service</option>
                                    <option value="driver">Driver</option>
                                    <option value="cafedansalonspa">Cafe dan Salon Spa</option>
                                    <option value="percetakan">Percetakan</option>
                                    <option value="sablon">Sablon</option>
                                    <option value="tokobesi">Toko Besi</option>
                                    <option value="tenagatukang">Tenaga Tukang</option>
                                    <option value="tenagaloundry">Tenaga Loundry</option>
                                    <option value="jagacounter">Jaga Counter</option>
                                    <option value="jagakost">Jaga Kost</option>
                                    <option value="pembanturumahtangga(PRT)">Pembantu Rumah Tangga(PRT)</option>
                                    <option value="babysitter">Baby sitter</option>
                                    <option value="perawatjompo/lansia">Perawat Jompo/Lansia</option>
                                </select>

                                    <label for="job">Owner</label>
                                    <input type="text" id="Owner" name="Owner">

                                    <label for="noKTP">noKTP</label>
                                    <input type="text" id="noKTP" name="noKTP">

                                    <label for="NPWP">NPWP</label>
                                    <input type="text" id="NPWP" name="NPWP">

                                    <label for="noTelepon">noTelepon</label>
                                    <input type="text" id="noTelepon" name="noTelepon">

                                    <label for="Perusahaan">Perusahaan</label>
                                    <input type="text" id="Perusahaan" name="Perusahaan">

                                    <label for="Penempatan">Penempatan</label>
                                    <input type="text" id="Penempatan" name="Penempatan">

                                    <label for="Syarat">Syarat</label>
                                    <input type="text" id="Syarat" name="Syarat">

                                    <label for="Fasilitas">Fasilitas</label>
                                    <input type="text" id="Fasilitas" name="Fasilitas">

                                    <label for="KodeLoker">Kode Iklan</label>
                                    <input type="text" id="KodeIklan" name="KodeIklan">

                                 <button class="Kirim">Kirim</button>
                            </form>
                        </div>
                    </body>
                    </body>
                    </html>
