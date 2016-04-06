<!DOCTYPE HTML>
<html>
    <head>
        <title>SISTEM PENYALUR TENAGA KERJA</title>
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
                        <a href="index.html"><h1>Legalized</h1></a>
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
        <div class="banner">
            <div class="container">
                <div  class="callbacks_container">
                    <ul class="rslides" id="slider4">
                        <li>
                            <div class="banner-info">
                                <h3>Get Legal Help from Us</h3>
                                <p>Start your destiny here...</p>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Get Legal  Solution from Us </h3>
                                <p>Start your destiny here...</p>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Get Confidential  legal advice </h3>
                                <p>Start your destiny here...</p>
                            </div>								
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Get Legal  Solution from Us </h3>
                                <p>Start your destiny here...</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--banner-->
                <script src="js/responsiveslides.min.js"></script>
                <script>
                        // You can also use "$(window).load(function() {"
                        $(function () {
                            // Slideshow 4
                            $("#slider4").responsiveSlides({
                                auto: true,
                                pager: true,
                                nav: true,
                                speed: 500,
                                namespace: "callbacks",
                                before: function () {
                                    $('.events').append("<li>before event fired.</li>");
                                },
                                after: function () {
                                    $('.events').append("<li>after event fired.</li>");
                                }
                            });

                        });
                </script>
            </div>
        </div>
        <!--welcome-->
        <div class="welcome">
            <div class="container">
                <h2>We are <span>Passionate About Helping</span> Clients Achieve Their Goals</h2>
                <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt labore dolore magna aliquyam eratsed diam voluptua vero eos accusam justo duo dolores rebum.</p>
                <ul class="wel">
                    <li>Get your Free Consultation </li>
                    <li class="phone">(888) 123-456-7890</li>
                    <li>Available 24/7 </li>
                </ul>
            </div>
        </div>
        <!--//welcome-->
        <!--about-->
        <div class="about">
            <div class="container">
                <h3 class="tittle">Login</h3>
                <div class="about-top">
                    <div class="col-md-5 ab-text">
                        <div class="quote-author-info padding5"><p>There are many variations of passages of Lorem Ipsum available, but the majority some lorem.</p>
                            <div class="author-title"><span class="author-designation">Advocate,</span> Joseph</div>
                        </div>
                    </div>
                    <div class="col-md-7 info">
                        <section class="ac-container">
                            <div>
                                <input id="ac-1" name="accordion-1" type="checkbox" />
                                <label for="ac-1">Applicant</label>
                                <article class="ac-medium"> //membuat tampilan login applicant
                                    <label class="ui red ribbon label">Nomor ID</label>
                                    <input placeholder="Nomor Induk" type="text" name="userId">
                                    <label class="ui red ribbon label">Password</label>
                                    <input placeholder="Password" type="password" name="pass">
                                    <button class="ui right floated primary button">Login<i class="right chevron icon"></i></button>     
                                </article>            
                            </div>
                        </section>
                    </div>
                    <div class="clearfix"></div>
                </div>

            </div>
        </div>
        <!--//about-->
        <!--start-services-->
        <div class="service-section" id="service">
            <div class="container">
                <h3 class="tittle">Services</h3>
                <div class="serve-grids">
                    <div class="serve-one">
                        <div class="col-md-6 serve-left">
                            <div class="col-md-6 service-grid">
                                <div class="icon">
                                    <i class="glyphicon glyphicon-time"></i>
                                </div>
                                <h5>Criminal Law</h5>
                                <p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                            </div>
                            <div class="col-md-6 service-grid">
                                <div class="icon">
                                    <i class="glyphicon glyphicon-heart"></i>
                                </div>
                                <h5>Corporate Law</h5>
                                <p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-md-6 serve-img">
                            <img src="images/s1.jpg" alt=""/>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="serve-one">
                        <div class="col-md-6 serve-img two">
                            <img src="images/s2.jpg" alt=""/>
                        </div>
                        <div class="col-md-6 serve-left two">
                            <div class="col-md-6 service-grid">
                                <div class="icon">
                                    <i class="glyphicon glyphicon-filter"></i>
                                </div>
                                <h5>Comercial Law</h5>
                                <p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                            </div>
                            <div class="col-md-6 service-grid">
                                <div class="icon">
                                    <i class="glyphicon glyphicon-gift"></i>
                                </div>
                                <h5>Civil Rights Law</h5>
                                <p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>

                    </div>
                </div>
            </div>
        </div>
        <!--//end-welcome-->
        <!--projects-->
        <div id="example1">
            <h3 class="tittle ser">A case like yours</h3>
            <div id="owl-demo" class="owl-carousel text-center">
                <div class="item">
                    <a data-toggle="modal" data-target=".bs-example-modal-md" href="images/p1.jpg" class="b-link-stripe b-animate-go  thickbox" title="Rose">
                        <img class="img-responsive lot" src="images/p1.jpg" alt="">
                        <div class="b-wrapper">
                            <div class="b-animate b-from-left b-delay03 ">
                                <i class="plus"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a data-toggle="modal" data-target=".bs-example-modal-md" href="images/p2.jpg" class="b-link-stripe b-animate-go  thickbox" title="Rose">
                        <img class="img-responsive lot" src="images/p2.jpg" alt="">
                        <div class="b-wrapper">
                            <div class="b-animate b-from-left b-delay03 ">
                                <i class="plus"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a data-toggle="modal" data-target=".bs-example-modal-md" href="images/p3.jpg" class="b-link-stripe b-animate-go  thickbox" title="Rose">
                        <img class="img-responsive lot" src="images/p3.jpg" alt="">
                        <div class="b-wrapper">
                            <div class="b-animate b-from-left b-delay03 ">
                                <i class="plus"></i>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="item">
                    <a data-toggle="modal" data-target=".bs-example-modal-md" href="images/p4.jpg" class="b-link-stripe b-animate-go  thickbox" title="Rose" >
                        <img class="img-responsive lot" src="images/p4.jpg" alt="">
                        <div class="b-wrapper">
                            <div class="b-animate b-from-left b-delay03 ">
                                <i class="plus"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a data-toggle="modal" data-target=".bs-example-modal-md" href="images/p5.jpg" class="b-link-stripe b-animate-go  thickbox" title="Rose">
                        <img class="img-responsive lot" src="images/p5.jpg" alt="">
                        <div class="b-wrapper">
                            <div class="b-animate b-from-left b-delay03 ">
                                <i class="plus"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a data-toggle="modal" data-target=".bs-example-modal-md" href="images/p1.jpg" class="b-link-stripe b-animate-go  thickbox" title="Rose">
                        <img class="img-responsive lot" src="images/p1.jpg" alt="">
                        <div class="b-wrapper">
                            <div class="b-animate b-from-left b-delay03 ">
                                <i class="plus"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a data-toggle="modal" data-target=".bs-example-modal-md" href="images/p2.jpg" class="b-link-stripe b-animate-go  thickbox" title="Rose">
                        <img class="img-responsive lot" src="images/p2.jpg" alt="">
                        <div class="b-wrapper">
                            <div class="b-animate b-from-left b-delay03 ">
                                <i class="plus"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a data-toggle="modal" data-target=".bs-example-modal-md" href="images/p3.jpg" class="b-link-stripe b-animate-go  thickbox" title="Rose">
                        <img class="img-responsive lot" src="images/p3.jpg" alt="">
                        <div class="b-wrapper">
                            <div class="b-animate b-from-left b-delay03 ">
                                <i class="plus"></i>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- requried-jsfiles-for owl -->
        <script src="js/owl.carousel.js"></script>
        <script>
                            $(document).ready(function () {
                                $("#owl-demo").owlCarousel({
                                    items: 4,
                                    lazyLoad: true,
                                    autoPlay: false,
                                    navigation: true,
                                    navigationText: true,
                                    pagination: false,
                                });
                            });
        </script>
        <!-- //requried-jsfiles-for owl -->
        <!--start-news-->
        <div class="news" id="news">
            <div class="container">
                <h3 class="tittle">Our News</h3>
                <div class="news-top">
                    <div class="col-md-6 news-grid">
                        <a href="single.html"><img src="images/n2.jpg" class="img-responsive" alt="/"> </a>
                        <a class="news" href="single.html"> New Post With Image</a>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,natus error sit voluptatem totam rem aperiam, eaque ipsa quae ab illo inventore...<a class="button" href="single.html"><img src="images/read.png" alt=""></a></p>
                        <div class="bog_post_info infoPost">
                            <span class="datePost"><a href="single.html" class="post_date">sep 10, 2015</a></span>
                            <span class="commentPost"><a class="icon-comment-1" title="Comments - 2" href="#"><i class="glyphicon glyphicon-comment"></i>2</a></span>
                            <span class="likePost"><i class="glyphicon glyphicon-heart two"></i><a class="icon-heart" title="Likes - 4" href="#">4</a></span>
                        </div>
                    </div>
                    <div class="col-md-6 news-grid">
                        <a href="single.html"><img src="images/n1.jpg" class="img-responsive" alt="/"> </a>
                        <a class="news" href="single.html">Latest New Post With Image</a>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,natus error sit voluptatem totam rem aperiam, eaque ipsa quae ab illo inventore...<a class="button" href="single.html"><img src="images/read.png" alt=""></a></p>
                        <div class="bog_post_info infoPost">
                            <span class="datePost"><a href="single.html" class="post_date">sep 20, 2015</a></span>
                            <span class="commentPost"><a class="icon-comment-1" title="Comments - 2" href="#"><i class="glyphicon glyphicon-comment"></i>2</a></span>
                            <span class="likePost"><i class="glyphicon glyphicon-heart two"></i><a class="icon-heart" title="Likes - 4" href="#">4</a></span>
                        </div>
                    </div>

                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>	
        <!--testimonials-->
        <div class="testimonials">
            <div class="container">
                <h3 class="tittle">Testimonials</h3>
                <div class="sap_tabs">	
                    <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                        <ul class="resp-tabs-list wow bounceIn animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
                            <li class="resp-tab-item"><span><img src="images/img11.jpg" alt=""/></span></li>
                            <li class="resp-tab-item"><span><img src="images/img12.jpg" alt=""/></span></li>
                            <li class="resp-tab-item"><span><img src="images/img13.jpg" alt=""/></span></li>				
                        </ul>
                        <div class="clearfix"> </div>
                        <div class="resp-tabs-container wow bounceIn animated" data-wow-delay=".5s" style="visibility: visible; -webkit-animation-delay: .5s;">
                            <div class="tab-1 resp-tab-content">				
                                <div class="view1 view-first">
                                    <h5>FILAN FISTEKU</h5>
                                    <p>Donec libero dui, scelerisque ac augue id, tristique ullamcorper elit. Nam ultrices, lacus vitae adipiscing aliquet, metus ipsum imperdiet libero, vitae dignissim sapien diam ac nibh convallis.</p>
                                </div>
                            </div>
                            <div class="tab-1 resp-tab-content">
                                <div class="view1 view-first">
                                    <h5>ULLAMCORPER FILAN </h5>
                                    <p>Scelerisque ac augue id Donec libero dui, , tristique ullamcorper elit. Nam ultrices, lacus vitae adipiscing aliquet, metus ipsum imperdiet libero, vitae dignissim sapien diam ac nibh convallis.</p>
                                </div>
                            </div>
                            <div class="tab-1 resp-tab-content">
                                <div class="view1 view-first">
                                    <h5>SCELERISQUE AUGUE</h5>
                                    <p>Nam ultrices lacus vitae adipiscing aliquet, metus ipsum imperdiet libero, vitae dignissim sapientristique Donec libero dui, scelerisque ac augue id,  ullamcorper elit,diam ac nibh convallis.</p>
                                </div>
                            </div>
                        </div>	
                    </div>	
                </div>		  
            </div>
            <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
            <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion           
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
            </script>		
        </div>
        <!--//testimonials-->

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
</html>
                                ID Applicant 
                            </td>
                            <td>
                                : <%=session.getAttribute("IDApllicant")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password
                            </td>
                            <td>
                                : <%=session.getAttribute("password")%>
                            </td>
                        </tr>
                    </table></h3>
            </div>
        </div>
    </body>
</html>

