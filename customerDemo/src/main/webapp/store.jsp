<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Game Store</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">	
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets --> 
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/store.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
</head>
 <body>
	<!-- header section start -->
<div class="header_section">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="logo"><a href="index.html"><img src="images/logo.png"></a></div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                  <a class="nav-link" href="home.jsp">HOME</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.jsp">ABOUT</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="product.jsp">PRODUCTS</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="store.jsp">GAME STORE</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.jsp">CONTACT US</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"><img src="images/search-icon.png"></a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="login.jsp">SIGN IN</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="customerinsert.jsp">REGISTER</a>
                </li>
              </ul>
            </div>
        </nav>
	</div>
	<!-- header section end -->
  <!-- Game store section start -->
<section class="game-display--section">

	<div class="container">

             <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3380/gaming_site", "root", "shanu123");
                Statement st = con.createStatement();
                String sql = "select * from store";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                	String id = rs.getString("gameid");
                    String gamename = rs.getString("game_name");
                    String date = rs.getString("gdate");
                    String filename = rs.getString("gthumbnail");
                    String price = rs.getString("gprice");
			        %>
				        <div class="card">
				            <img src="gameimage/<%=filename%>"alt="city" />
					          <div class="card-body">
					            <span class="tag tag-pink">Game</span>
					            <br>
					            <h3 ><%=gamename%></h3>
					            
					            <h4><%=price%> </h4>
					              
					           
					            <p>
					            	<button class="btn btn-danger">Add to cart</button>
					            </p>
					            <div class="user">
					              <div class="user-info">
					                <h5><%=date%></h5>
					              </div>
					            </div>
					          </div>
				        </div>
				      
			        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
        </div>
</section>
  <!-- Game store section end -->
  <!-- footer section start -->
  <div class="section_footer margin_top_2">
      <div class="container"> 
          <div class="footer_section_2">
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-3">
                  <h2 class="account_text">About Us</h2>
                  <p class="ipsum_text_2">dolor sit amet, consectetur magna aliqua. Ut enim ad minim veniam, quisdotempor incididunt r</p>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3">
                  <h2 class="account_text">Useful Link</h2>
                  <div class="useful_link">
                    <ul>
                      <li><a href="#">Video games</a></li>
                      <li><a href="#">Remote control</a></li>
                      <li><a href="#">3d controller</a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3">
                <h2 class="account_text">Contact Us</h2>
                <p class="ipsum_text_2">dolor sit amet, consectetur magna aliqua. quisdotempor incididunt ut e </p>
                </div>
          <div class="col-sm-6 col-md-6 col-lg-3">
            <h2 class="account_text">Newsletter</h2>
            <input type="" class="email_text" placeholder="Enter Your Email" name="Enter Your Email">
            <button class="subscribr_bt">SUBSCRIBE</button>
          </div>
        </div>
      </div>
      <div class="social_icon">
        <ul>
          <li><a href="#"><img src="images/fb-icon.png"></a></li>
          <li><a href="#"><img src="images/twitter-icon.png"></a></li>
          <li><a href="#"><img src="images/linkdin-icon.png"></a></li>
          <li><a href="#"><img src="images/instagram-icon.png"></a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- footer section end -->
  <!-- copyright section start -->
  <div class="copyright_section">
    <div class="container">
      <p class="copyright_text">Copyright 2020 All Right Reserved By <a href="https://html.design/"> Free html Templates</p>
    </div>
  </div>
  <!-- copyright section end -->
  <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- javascript --> 
    <script src="js/owl.carousel.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
    $(document).ready(function(){
    $(".fancybox").fancybox({
        openEffect: "none",
        closeEffect: "none"
        });
    </script>
</body>
</html>