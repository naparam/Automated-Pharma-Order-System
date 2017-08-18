<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Current_Stock.aspx.cs" Inherits="Current_Stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    
    <link rel="shortcut icon" href="img/favicon.png"/>

    <title>Pharma Order Collection</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />    
    <!-- full calendar css-->
   
    <!-- easy pie chart-->
   
    <!-- owl carousel -->
    
    <!-- Custom styles -->
	<link rel="stylesheet" href="css/fullcalendar.css"/>
	<link href="css/widgets.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/xcharts.min.css" rel=" stylesheet"/>	
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet"/>
   

</head>
<body>
<!-- container section start -->
  <section id="container" class="">
     
<!--Header Start-->    
    <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom">
                <i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="AdminPage.aspx" class="logo"> <span class="lite">Pharma Order Collection</span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu" style="position:absolute;left:600px;">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text"/>
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->                
            </div>
        
 <!-- user login dropdown start -->       
        <div class="dropdown" style="float: right;">
         
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/chat-avatar2.jpg"/>
                            </span>
                            <span class="username">Narpat Desai</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            
                            
                            <li>
                                <a href="AdminPage.aspx"><i class="icon_house"></i> Home</a>
                            </li>
                            <li>
                                <a href="Client.aspx"><i class="icon_building"></i> Client</a>
                            </li>
                            <li>
                                <a href="Drugs.aspx"><i class="icon_cart"></i> Drugs</a>
                            </li>
                            <li>
                                <a href="Login.aspx"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                           
                            
                        </ul>
                    
             </div>   
                
          <!-- user login dropdown end -->                
          
      </header>      
<!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="AdminPage.aspx">
                          <i class="icon_house_alt"></i>
                          <span>Home</span>

                      </a>
                  </li>
                   <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Master</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="Client.aspx">Client</a></li>
                          <li><a class="" href="Drugs.aspx">Drugs</a></li>
                          <li><a class="" href="Manufacturer.aspx">Manufacturer</a></li>
                          <li><a class="" href="Delivery_Boy.aspx">Delivery Boy</a></li>
                      </ul>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>Billing</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="Transit_Bill.aspx">Transit Bill</a></li>                          
                          <li><a class="" href="Pending_Bill.aspx">Pending Bill</a></li>
                          <li><a class="" href="Debit_Bill.aspx">Debit Bill</a></li>
                          <li><a class="" href="Out_of_Date_Pending_Bill.aspx">Out of Date Pending Bill</a></li>
                      </ul>
                  </li>       
                 
                   <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_genius"></i>
                          <span>Order</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="Order_App.aspx">Capture From App</a></li>                          
                          <li><a class="" href="Order_Manual.aspx">Manual Order</a></li>
                      </ul>
                  </li>       
                                    
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>Report</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">                          
                          <li><a class="" href="Current_Stock.aspx">Current Stock</a></li>
                          <li><a class="" href="Expired_Product.aspx"><span>Expired Product</span></a></li>
                          <li><a class="" href="Sale_Datewise.aspx">Sale Datewise</a></li>
                          <li><a class="" href="Sale_By_Customer.aspx">Sale By Customer</a></li>
                          <li><a class="" href="Sale_By_Item.aspx">Sale By Item</a></li>
                          <li><a class="" href="Sale By Bill.aspx">Sale By Bill</a></li>
                          <li><a class="" href="Total_Sale.aspx">Total Sale</a></li>
                         
                        </ul>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">            
        <!--Header Line Start-->
        <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-laptop"></i> Pharma Ordering System</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="AdminPage.aspx">Home</a></li>
                        <li><i class="fa fa-laptop"></i>Report</li>      
                        <li><i class="fa fa-laptop"></i>Current Stock</li>                    
                    </ol>
                </div>
            </div>
        <!--Header Line End-->
               <!--Inner Content Start-->
              <div class="row">
                  <div class="col-md-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Current Stock
                          </header>
                          <div class="panel-body">
                              <form class="form-horizontal " method="post" runat="server">
                                  <div class="form-group">
                                      <div style="margin-left:15px">

                                          </div>
                                   </div>
                             </form>
                          </div>
                        </section>
                </div>
            </div>
              <!--Inner Content End-->
        
          </section>
          
      </section>
      <!--main content end-->
  </section>
     <!-- javascripts -->
    <script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    
    
</body>
</html>
