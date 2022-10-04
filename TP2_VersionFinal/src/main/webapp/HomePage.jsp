<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<fmt:bundle basename="i18n">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><fmt:message key="HomeTitleHeader"/></title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/Resources/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="Resources/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

<fmt:setLocale value="fr_CA"/>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="HomePage.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div  class="sidebar-brand-text mx-3"><fmt:message key="HomeTitle"/></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">
     

            <!-- Nav Item - Charts -->
            
            
                <li class="nav-item active">
                <a class="nav-link" href="HomePage.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span ><fmt:message key="HomeBtn" /></span></a>
            </li>
 
            <li class="nav-item">
                <a class="nav-link" href="Listing.jsp">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span><fmt:message key="AllCarBtn" /></span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="Rented.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span><fmt:message key="RentedBtn" /></span></a>
            </li>

            
                  <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="CarInfo.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span><fmt:message key="CarInfoBtn" /></span></a>
            </li>
            
            
                <li class="nav-item">
                <a class="nav-link" href="AboutUs.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span><fmt:message key="AboutBtn" /></span></a>
            </li>
            
        
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">


        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->

            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow"> 
                    
                    <span  class="badge badge-success badge-info"><fmt:message key="Fr"/></span>
                   <span class="badge badge-success badge-info"><fmt:message key="En"/></span>
                             
                            
                                

      
                </nav>
                 
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                            
                  <!-- Content Row -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1  class="h1 text-center mb-2 text-gray-900"><fmt:message key="HomeTitle"/></h1>
                       
                </div>
                <!-- /.container-fluid -->
                <br>  
                <br>  
                <p class="h5  mb-2 text-gray-600"><fmt:message key="HomeMessage"/></p>
                 <br>  
                <br>  
                <p class="h5  mb-2 text-gray-600"><fmt:message key="HomeMessage2"/></p>
                 <br>  
                <br>  
                <p class="h5  mb-2 text-gray-600"><fmt:message key="HomeMessage3"/></p>
                 <br>  
                <br>  
        
            </div>
            <!-- End of Main Content -->
          
            <!-- Footer -->
            <footer class="sticky-footer bg-white" >
                <div class="container my-auto">
                    <div class="copyright  text-center my-auto">
                        <span>Copyright &copy;<fmt:message key="HomeTitle"/></span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</fmt:bundle>
</body>

</html>