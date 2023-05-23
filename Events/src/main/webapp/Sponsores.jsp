<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.">
  
    <!-- theme meta -->
    <meta name="theme-name" content="sleek" />
    
    <title>Sponsores</title>
	    <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
	  rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	  <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
	 integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />

    <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />
  
    <!-- PLUGINS CSS STYLE -->
    <link href="assets/plugins/simplebar/simplebar.css" rel="stylesheet" />
    <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
  
    <!-- No Extra plugin used -->
    <link href='assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css' rel='stylesheet'>
    <link href='assets/plugins/daterangepicker/daterangepicker.css' rel='stylesheet'>
    
    
    <link href='assets/plugins/toastr/toastr.min.css' rel='stylesheet'>
    
    
    
    
    
    

    <!-- SLEEK CSS -->
    <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />
  
    <!-- FAVICON -->
    <link href="assets/img/favicon.png" rel="shortcut icon" />
  
    <script src="assets/plugins/nprogress/nprogress.js"></script>
  </head>

  <body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">
    <script>
      NProgress.configure({ showSpinner: false });
      NProgress.start();
    </script>

    <div class="wrapper">






        <!-- ====================================
          ——— LEFT SIDEBAR WITH OUT FOOTER
        ===================================== -->
        <aside class="left-sidebar bg-sidebar">
          <div id="sidebar" class="sidebar sidebar-with-footer">
            <!-- Aplication Brand -->
            <div class="app-brand">
              <a href="home3.jsp" title="Sleek Dashboard">
                <svg
                  class="brand-icon"
                  xmlns="http://www.w3.org/2000/svg"
                  preserveAspectRatio="xMidYMid"
                  width="30"
                  height="33"
                  viewBox="0 0 30 33">
                  <g fill="none" fill-rule="evenodd">
                    <path class="logo-fill-blue" fill="#7DBCFF" d="M0 4v25l8 4V0zM22 4v25l8 4V0z" />
                    <path class="logo-fill-white" fill="#FFF" d="M11 4v25l8 4V0z" />
                  </g>
                </svg>

                <span class="brand-name text-truncate">DASHBOARD</span>
              </a>
            </div>

            <!-- begin sidebar scrollbar -->
            <div class="" data-simplebar style="height: 100%;">
              <!-- sidebar menu -->
              <ul class="nav sidebar-inner" id="sidebar-menu">

               <li class="has-sub ">
                  <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#forms"
                    aria-expanded="false" aria-controls="forms">
                    <i class="mdi mdi-email-mark-as-unread"></i>
                    <span class="nav-text">Venues</span> <b class="caret"></b>
                  </a>

                  <ul class="collapse " id="forms" data-parent="#sidebar-menu">
                    <div class="sub-menu">
                      <li class="">
                        <a class="sidenav-item-link" href="VenueAdd.jsp">
                          <span class="nav-text">Add Venue</span>
                        </a>
                      </li>

                      <li class="">
                        <a class="sidenav-item-link" href="Venues.jsp">
                          <span class="nav-text">All Venues</span>
                        </a>
                      </li>
                    </div>
                  </ul>
                </li>
                 
                 
                <li class="has-sub ">
                  <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#tables"
                    aria-expanded="false" aria-controls="tables">
                    <i class="mdi mdi-table"></i>
                    <span class="nav-text">Sponsore</span> <b class="caret"></b>
                  </a>

                  <ul class="collapse " id="tables" data-parent="#sidebar-menu">
                    <div class="sub-menu">
                      <li class="">
                        <a class="sidenav-item-link" href="SponsoreAdd.jsp">
                          <span class="nav-text">Add Sponsore</span>
                        </a>
                      </li>
                      
                      <li>
                         <div class="sub-menu">
	                      <li class="">
	                        <a class="sidenav-item-link" href="Sponsores.jsp">
	                          <span class="nav-text">All Sponsores </span>
	                        </a>
                      </li>
                    </div>
                  </ul>
                </li>     
              </ul>
            </div>
          </div>
        </aside>


          <!-- ====================================
        ——— PAGE WRAPPER
        ===================================== -->
        <div class="page-wrapper">
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
			<%@page import="java.sql.ResultSet"%>
			<%@page import="java.sql.DriverManager"%>
			<%@page import="java.sql.Statement"%>
			<%@page import="java.sql.Connection"%>
          

          
          <!-- ====================================
          ——— CONTENT WRAPPER
          ===================================== -->
          <!-- <div class="content-wrapper"> -->
            <h1 align="center">ALL Sponsors </h1><br>
        <table align="center" id="responsive-data-table" class="table dt-responsive nowrap" style="width:100%" border="2">
            <tr>
                <th>Sponsor ID</th>
                <th>Sponsor Name</th>
                <th>Contact No.</th>
                <th>Email</th>
                <th>Amount</th>
                <th align="center">Action</th>
                <!-- <th>delete</th> -->
                
            </tr>
             <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventmanagement", "root", "shanu123");
                Statement st = con.createStatement();
                String sql = "select * from sponsors";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                	String id = rs.getString("sponsorid");
                    String sponsorname = rs.getString("sponsorName");
                    String contactNo = rs.getString("contactNo");
                    String email = rs.getString("email");
                    String amount = rs.getString("Amount");
        %>

            <tr>
                <td><%=id%></td>
                <td><%=sponsorname%></td>
                <td><%=contactNo%></td>
                <td><%=email%></td>
                <td><%=amount%></td>
                
                <c:url value="updategame.jsp" var="spoupdate">
					<c:param name="id" value="<%=id%>"/>
					<c:param name="spoName" value="<%=sponsorname%>"/>
					<c:param name="number" value="<%=contactNo%>"/>
					<c:param name="email" value="<%=email%>"/>
					<c:param name="price" value="<%=amount%>"/>
				</c:url>
				
				<c:url value="deletegame.jsp" var="spodelete">
					<c:param name="id" value="<%=id%>"/>
					<c:param name="spoName" value="<%=sponsorname%>"/>
					<c:param name="number" value="<%=contactNo%>"/>
					<c:param name="email" value="<%=email%>"/>
					<c:param name="price" value="<%=amount%>"/>
				</c:url>
                
                <td><a href="${spoupdate}"><button class="btn btn-success">Update</button></a>
                	<a href="${spodelete}"><button class="btn btn-danger">Delete</button></a></td>

            </tr>
      
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
          </table>
			
	
    
    <!-- </div>  --><!-- End Page Wrapper -->
  </div> <!-- End Wrapper --></div>
     <!--  Footer -->
<!--      <footer class="footer mt-auto">
      <div class="copyright bg-white">
        <p>
          Copyright &copy; <span id="copy-year"></span> TEAM <a class="text-primary" href="#" target="_blank">174</a>.
        </p>
      </div>
      <script>
        var d = new Date();
        var year = d.getFullYear();
        document.getElementById("copy-year").innerHTML = year;
      </script>
    </footer>   -->

    <!-- Javascript -->
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/plugins/simplebar/simplebar.min.js"></script>
    <script src='assets/plugins/charts/Chart.min.js'></script>
    <script src='assets/js/chart.js'></script>
    <script src='assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js'></script>
    <script src='assets/plugins/jvectormap/jquery-jvectormap-world-mill.js'></script>
    <script src='assets/js/vector-map.js'></script>
    <script src='assets/plugins/daterangepicker/moment.min.js'></script>
    <script src='assets/plugins/daterangepicker/daterangepicker.js'></script>
    <script src='assets/js/date-range.js'></script>
    <script src='assets/plugins/toastr/toastr.min.js'></script>
    <script src="assets/js/sleek.js"></script>
  <link href="assets/options/optionswitch.css" rel="stylesheet">
<script src="assets/options/optionswitcher.js"></script>
</body>
</html>

    