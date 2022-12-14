<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<fmt:bundle basename="i18n">
<fmt:setLocale value="=fr_CA"/>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

  <title><fmt:message key="HomeTitleHeader"/></title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

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
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->

            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

               
                
                           
                
                    <button  class=" ml-auto  btn btn-primary btn-sm"  href="/ControllerServlet?langueSaisie=fr&page=Home"><fmt:message key="Fr"/></button>
                    <button class=" ml-2 mr-2 btn btn-primary btn-sm"  href="/ControllerServlet?langueSaisie=en&page=Home"><fmt:message key="En"/></button>
                             
      
                </nav>
         
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">



                    <!-- Content Row -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-2 text-gray-800">Car List</h1>
                        <p class="mb-4">List of all cars both available and rented.</p>
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Car Inventory (Count)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800" th:text="${carList.size()}"></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Car List (Rented and Available)</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                        <tr>
                                            <th>Product ID</th>
                                            <th>Year</th>
                                            <th>Mileage</th>
                                            <th>Is Rented</th>
                                            <th>Model</th>
                                            <th>License</th>
                                            <th>Price</th>
                                            <th>Actions</th>
                                        </tr>
                                        </thead>
                                        <tfoot>
                                        <tr>
                                            <th>Product ID</th>
                                            <th>Year</th>
                                            <th>Mileage</th>
                                            <th>Is Rented</th>
                                            <th>Model</th>
                                            <th>License</th>
                                            <th>Price</th>
                                            <th>Actions</th>
                                        </tr>
                                        </tfoot>
                                        <tbody>
                                        <tr th:each="car : ${carList}">
                                            <td th:text="${car.pid}"></td>
                                            <td th:text="${car.year}"></td>
                                            <td th:text="${car.mileage}"></td>
                                            <td th:text="${car.isRented} ? 'True' : 'False'"></td>
                                            <td th:text="${car.model}"></td>
                                            <td th:text="${car.license}"></td>
                                            <td th:text="${car.price}"></td>
                                            <td>
                                                <a href="/rent/" th:attrappend="href=${car.pid}" class="btn btn-success btn-icon-split btn-sm">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-check"></i>
                                                    </span>
                                                    <span class="text">Rent</span>
                                                </a>
                                                <a href="/return/" th:attrappend="href=${car.pid}" class="btn btn-warning btn-icon-split btn-sm">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-arrow-right"></i>
                                                    </span>
                                                    <span class="text">Return</span>
                                                </a>

                                            </td>

                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>






                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; RentACar</span>
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

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">????</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

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




<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

  

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/Resources/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="Resources/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">


    
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
                
                           
                
                    <button  class=" ml-auto  btn btn-primary btn-sm"  href="/ControllerServlet?langueSaisie=fr&page=Home"><fmt:message key="Fr"/></button>
                    <button class=" ml-2 mr-2 btn btn-primary btn-sm"  href="/ControllerServlet?langueSaisie=en&page=Home"><fmt:message key="En"/></button>
                             
      
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


</body>

</html>