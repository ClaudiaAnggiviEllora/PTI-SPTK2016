<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.sql.*" %>
 <%@page import="java.io.*" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Legalized a Society & People Category Flat Bootstrap Responsive Website Template | Practice Areas :: w3layouts</title>
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
	<script src="js/jquery.min.js"> </script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<!--gallery-->
   <script src="js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="all" />
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('#example1 a').Chocolat();
		});
		</script>
		<script type="text/javascript">
		$(function() {
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
						<li><a href="input.jsp" data-hover="HOME">Home</a></li> 
						<li><a href="input.jsp" data-hover="Pasang Iklan Loker">Pasang Iklan Loker</a></li>
						<li><a href="input.jsp" data-hover="permintaan pasang iklan Loker">permintaan pasang iklan Loker</a></li>
						<li><a class="active" href="areas.jsp" data-hover="+tambah calon tenaga kerja">+tambah calon tenaga kerja</a></li>
						<li><a href="input.jsp" data-hover="+tambah info Loker">+tambah info Loker</a></li>
						<li><a href="hapusInfoLoker.jsp" data-hover="hapus daftar tenaga kerja">hapus daftar tenaga kerja</a></li>
                                                <li><a href="input.jsp" data-hover="hapus Loker">hapus Loker</a></li>
                                                <li><a href="input.jsp" data-hover="Logout">Logout</a></li>
					</ul>
				</div>
            <!-- script-for-menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
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
					<a href="index.html"><h1>Sistem Penyalur tenaga Kerja PT. Edi Daya Group</h1></a>
				</div>
				
			</div>
                 </div>
            <center><h1>Hapus Lowongan Pekerjaan dari Tabel Lowongan Pekerjaan berikut : </h1></center>
 <%
 try {
 
//deklarasi url database
 String url = "jdbc:mysql://localhost:3306/sptk";
 Connection con = null;
 Statement stat = null;
 ResultSet rs = null;
 
//load jdbc driver
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 
con = DriverManager.getConnection(url, "root", "");
 
stat = con.createStatement();
 
//membuat query
String query = "Select * from tabelloker";

 
rs = stat.executeQuery(query);
 
%>
 <table border="1">
 <tr>
 <th>Tanggal</th>
 <th>Jenis Pekerjaan</th>
 <th>Job</th>
 <th>Owner</th>
 <th>NO.KTP</th>
 <th>NPWP</th>
 <th>NO.Telpn</th>
 <th>Perusahaan</th>
 <th>Penempatan</th>
 <th>Syarat</th>
 <th>Fasilitas</th>
 <th>Keterangan</th>
 <th>Kode Iklan</th>
 </tr>
 <% while (rs.next())
 {
 %>

 <tr>
 <td><%=rs.getString(1)%></td>
 <td><%=rs.getString(2)%></td>
 <td><%=rs.getString(3)%></td>
 <td><%=rs.getString(4)%></td>
 <td><%=rs.getString(5)%></td>
 <td><%=rs.getString(6)%></td>
 <td><%=rs.getString(7)%></td>
 <td><%=rs.getString(8)%></td>
 <td><%=rs.getString(9)%></td>
 <td><%=rs.getString(10)%></td>
 <td><%=rs.getString(11)%></td>
 <td><%=rs.getString(12)%></td>
 <td><%=rs.getString(13)%></td>
 <!--<form action="servletHapusLoker" method="post"></form>
       <td><input type="submit" value="hapus"/></td>
 <!--<button type="submit">hapus </button>-->
 </tr>
 
<%
 }
 %>
 <%
 
//menutup koneksi
 rs.close();
 stat.close();
 con.close();
 }
 catch (Exception ex)
 {
 out.println ("Unable to connect to database");
 }
 %>
 </table>

 <table>
 <tr>
 </tr>
 </table>
 <br><p><center>Hapus Info lowongan kerja berdasarkan Kode Iklan !!!</center></p>
        <form method="post" action="./servletHapusLoker">
            <center><p>Kode Iklan </p></center>
            <center><input type="text" name="kodeIklan"/><br></center>
            <center><input type="submit" name="submit" value="Hapus"/></center>
</form>
		<div class="copy">
		    <p>&#169; Copyright 2016 | PTI | SPTK Project</p>
		</div>
</body>
</html>