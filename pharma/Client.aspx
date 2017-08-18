<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="Client" %>

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
    <!-- Form Css css-->
    <link href="Content/form_css.css" rel="stylesheet" />
    <!-- easy pie chart-->
   
    <!-- owl carousel -->
    
    <!-- Custom styles -->
	<link rel="stylesheet" href="css/fullcalendar.css"/>
	<link href="css/widgets.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/xcharts.min.css" rel=" stylesheet"/>	
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet"/>
   

     <style type="text/css">
         .sl {
             position: absolute;
         }
     </style>
   

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
                        <li><i class="fa fa-laptop"></i>Master</li>                          
                        <li><i class="fa fa-laptop"></i>Client</li>  
                    </ol>
                </div>
            </div>
        <!--Header Line End-->

        <!--Main Content Start-->
        <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Enter The Client Data
                          </header>
                          <div class="panel-body">
                              <form class="form-horizontal " method="post" runat="server">
                                  <div class="form-group">
                                      <div class="row">
                                          <div style="margin-left:30px">
                                               <asp:Label ID="Label1" runat="server" Text="Shop ID:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                               <asp:TextBox ID="TextBox1" CssClass="textfield" placeholder="Shop ID" runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="Shop ID" Height="30px"  Width="150px" ReadOnly="True"></asp:TextBox>
                                              <asp:Label ID="Label2" runat="server" Text="Name:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                              <asp:TextBox ID="TextBox2"  CssClass="textfield" placeholder="Enter Shop Name " runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="Shop Name" Height="30px" Width="300px"></asp:TextBox>
                                              <asp:Label ID="Label3" runat="server" Text="Contact Person:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                              <asp:TextBox ID="TextBox3"  CssClass="textfield" placeholder="Contact Person Name " runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="Contact Person Name" Height="30px" Width="217px"></asp:TextBox>

                                           </div></br>
                                           <div style="margin-left:30px" class="input-group">
                                                <asp:Label ID="Label4" runat="server" Text="VAT No:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                                <asp:TextBox ID="TextBox4" CssClass="textfield" placeholder="VAT Number" runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="Value Added Text Number {VAT No}" Height="30px" Width="150px"></asp:TextBox>
                                               <asp:Label ID="Label6" runat="server" Text="Address 1:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                               <asp:TextBox ID="TextBox6" CssClass="textfield" placeholder="Billing Address Line One" runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="Billing Address Line One" Height="30px" Width="285px"></asp:TextBox>
                                               <asp:Label ID="Label8" runat="server" Text="Mobile Number:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                               <span class="input-group-addon">+91</span>
                                              <asp:TextBox ID="TextBox8"  CssClass="textfield form-control" aria-label="Amount (to the nearest dollar)" placeholder="Mobile Number " runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" style="margin-right:410px;" ToolTip="Reference Person Number" Width="160px"></asp:TextBox>
                                            </div></br>
                                          <div style="margin-left:30px" class="input-group">
                                                <asp:Label ID="Label5" runat="server" Text="SE No:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                                <asp:TextBox ID="TextBox5" style="margin-left:10px" CssClass="textfield" placeholder="SE Number" runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="Service Establishment Number" Height="30px" Width="150px"></asp:TextBox>
                                              <asp:Label ID="Label7" runat="server" Text="Address 2:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                               <asp:TextBox ID="TextBox7" CssClass="textfield" placeholder="Billing Address Line Two" runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="Billing Address Line two" Height="30px" Width="285px"></asp:TextBox>
                                              <asp:Label ID="Label9" runat="server" Text="Shop Number:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                             <span class="input-group-addon">+91</span>
                                              <asp:TextBox ID="TextBox9"  CssClass="textfield form-control" aria-label="Amount (to the nearest dollar)" placeholder="Cell Number " runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" style="margin-right:410px;" ToolTip="Shop Cell Number" Width="172px"></asp:TextBox>
                                            </div></br>
                                          <div style="margin-left:30px">
                                              <asp:Label ID="Label10" runat="server" Text="User ID:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                                <asp:TextBox ID="TextBox10" style="margin-left:10px" CssClass="textfield" placeholder="User ID" runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="User ID for Mobile App" Height="30px" Width="150px"></asp:TextBox>
                                              <asp:Label ID="Label11" runat="server" Text="Password:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                                <asp:TextBox ID="TextBox11" style="margin-left:10px" CssClass="textfield" placeholder="Password" runat="server" BorderStyle="Inset" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" ToolTip="Password for mobile app" Height="30px" Width="150px"></asp:TextBox>
                                          </div>
                                        </div>
                                      <div style="position:absolute;top:49px;left:970px;  padding:4px 7px 2px 4px; ">
                                          <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-success" Width="82px" OnClick="Button1_Click"/></br></br>
                                          <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="btn btn-primary" Width="82px" OnClick="Button2_Click"   /></br></br>
                                         
                                      </div>
                                </div>
                                  <div>
                                      <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1025px">
                                          <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                          <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                          <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                          <RowStyle BackColor="White" ForeColor="#003399" />
                                          <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                          <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                          <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                          <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                          <SortedDescendingHeaderStyle BackColor="#002876" />
                                      </asp:GridView>
                                  </div>    
                             <div style="position:absolute;top:263px;left:1065px;  padding:4px 7px 2px 4px; ">
                                          <asp:Button ID="Button3" runat="server" Text="Update" CssClass="btn btn-success btn-sm" Width="82px"/></br></br>
                                          <asp:Button ID="Button4" runat="server" Text="Remove" CssClass="btn btn-danger btn-sm" Width="82px"/></br></br>
                                 <asp:Button ID="Button5" runat="server" Text="Close" CssClass="btn btn-warning btn-sm" Width="82px" /></br></br>
                                         
                                      </div>                          
                                  
                                  </form>
                             
                              </div>
                      </section>
                  </div>
        </div>
        <!--Main Content End-->

              

                         
        
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
