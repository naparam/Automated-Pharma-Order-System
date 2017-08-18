<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign In</title>

    <!-- Bootstrap -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Custome CSS -->
    <link href="Content/header_template_style.css" rel="stylesheet" />
    <link href="Content/header_template_style_strip.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
    <form id="form1" runat="server">
        <div>
      <!-- Header Strip Start-->
    <div id="headerstrip1" >
	    <div>
		    <nav id="navbar1">
			    <a href="#">FAQ</a>
			    <a href="#">Client details</a>
			    <a href="#">About us</a>
		    </nav>
	    </div>
    </div><!-- Header Strip End-->
    <!-- Header Template Start-->
    <div id='templatemain'>
	    <img src="Images/pharma.png" height="90"/>
		<div id='titlename' style="position:absolute;top:30px;left:500px; font-family:'Times New Roman';">				
		    <span> Pharma Order Collection </span>
		</div>
	</div><!-- Header Template End-->
    
    <!-- Navbar Start-->
    <div>
	    <div>
		    <nav id="navbar2" >
                <a  href="Home.aspx">Home</a>
			    <a  href="Login.aspx">Login</a>
			    <a  href="#">List of Drugs Available</a>
			    <a  href="#">List of Drugs Stoped Supply </a>
		    </nav>
	    </div>
    </div>
    <!-- Navbar End-->


    <!-- Login Page start -->
 <div class="container-fluid" style="position:absolute; left:922px; top:200px;">
 <div class="form-horizontal">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Email:</label>
    <div class="col-sm-9">
         <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ErrorMessage="The Username field is Required !" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Password:</label>
    <div class="col-sm-9">
         <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" ErrorMessage="The Password field is Required !" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    </div>
  </div>
     
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"/> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
         <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="btn btn-primary" OnClick="Button1_Click"/>
       
        <asp:Button ID="Button2" runat="server" Text="Forget Password" CssClass="btn btn-danger" />
    </div>
  </div>
 </div>
     </div>
    

    <!-- Login Page start -->


        
 <!-- Clock start
        <div  style="position:absolute; top:200px; float:right; margin-left:950px;">

<canvas id="canvas" width="150" height="150" style="background-color:">
</canvas>

<script>
var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");
var radius = canvas.height / 2;
ctx.translate(radius, radius);
radius = radius * 0.90
setInterval(drawClock, 1000);

function drawClock() {
  drawFace(ctx, radius);
  drawNumbers(ctx, radius);
  drawTime(ctx, radius);
}

function drawFace(ctx, radius) {
  var grad;
  ctx.beginPath();
  ctx.arc(0, 0, radius, 0, 2*Math.PI);
  ctx.fillStyle = 'white';
  ctx.fill();
  grad = ctx.createRadialGradient(0,0,radius*0.95, 0,0,radius*1.05);
  grad.addColorStop(0, '#333');
  grad.addColorStop(0.5, 'white');
  grad.addColorStop(1, '#333');
  ctx.strokeStyle = grad;
  ctx.lineWidth = radius*0.1;
  ctx.stroke();
  ctx.beginPath();
  ctx.arc(0, 0, radius*0.1, 0, 2*Math.PI);
  ctx.fillStyle = '#333';
  ctx.fill();
}

function drawNumbers(ctx, radius) {
  var ang;
  var num;
  ctx.font = radius*0.15 + "px arial";
  ctx.textBaseline="middle";
  ctx.textAlign="center";
  for(num = 1; num < 13; num++){
    ang = num * Math.PI / 6;
    ctx.rotate(ang);
    ctx.translate(0, -radius*0.85);
    ctx.rotate(-ang);
    ctx.fillText(num.toString(), 0, 0);
    ctx.rotate(ang);
    ctx.translate(0, radius*0.85);
    ctx.rotate(-ang);
  }
}

function drawTime(ctx, radius){
    var now = new Date();
    var hour = now.getHours();
    var minute = now.getMinutes();
    var second = now.getSeconds();
    //hour
    hour=hour%12;
    hour=(hour*Math.PI/6)+
    (minute*Math.PI/(6*60))+
    (second*Math.PI/(360*60));
    drawHand(ctx, hour, radius*0.5, radius*0.07);
    //minute
    minute=(minute*Math.PI/30)+(second*Math.PI/(30*60));
    drawHand(ctx, minute, radius*0.8, radius*0.07);
    // second
    second=(second*Math.PI/30);
    drawHand(ctx, second, radius*0.9, radius*0.02);
}

function drawHand(ctx, pos, length, width) {
    ctx.beginPath();
    ctx.lineWidth = width;
    ctx.lineCap = "round";
    ctx.moveTo(0,0);
    ctx.rotate(pos);
    ctx.lineTo(0, -length);
    ctx.stroke();
    ctx.rotate(-pos);
}
</script>
            </div>
        <!-- Clock End
            -->
        

    <!-- Carousel Statr-->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="width:500px;height:333px;margin-top:110px;margin-left:10px;" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" style="position:absolute;">
    <div class="item active">
      <img src="Images/Carousel3.png" alt="Error" width="500" height="200"/>
      <div class="carousel-caption">
        Medicine
      </div>
    </div>
    <div class="item">
      <img src="Images/Carousel2.png" alt="Error" width="500" height="200"/>
      <div class="carousel-caption">
        Medicine
      </div>
    </div>
    <div class="item">
      <img src="Images/Carousel1.png" alt="Error" width="500" height="200"/>
      <div class="carousel-caption">
        Medicine
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <!-- Carousel End-->
        
             
           
      <!-- middle contents Start-->
        <div>&nbsp</div>
    <div class="container-fluid center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="Images/Thumb01.jpg" alt="error" width="140" height="140" />
                <h4>Aspirin</h4>
                <p style="text-align:justify;">Aspirin is used to reduce fever and relieve mild to moderate pain from conditions such as muscle aches, toothaches, common cold, and headaches. It may also be used to reduce pain and swelling in conditions such as arthritis. Aspirin is known as a salicylate and a nonsteroidal anti-inflammatory drug (NSAID).</p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a> </p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="Images/Thumb02.jpg" alt="error" width="140" height="140" />
                <h4>Ibuprofen</h4>
                <p style="text-align:justify;">Ibuprofen is used to relieve pain from various conditions such as headache, dental pain, menstrual cramps, muscle aches, or arthritis. It is also used to reduce fever and to relieve minor aches and pain due to the common cold or flu. Ibuprofen is a nonsteroidal anti-inflammatory drug (NSAID).</p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a> </p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="Images/Thumb03.jpg" alt="error" width="140" height="140" />
                <h4>Naproxen</h4>
                <p style="text-align:justify;">Naproxen is a nonsteroidal anti-inflammatory drug (NSAID). It works by reducing hormones that cause inflammation and pain in the body. Naproxen is used to treat pain or inflammation caused by conditions such as arthritis, ankylosing spondylitis, tendinitis, bursitis, gout, or menstrual cramps.</p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo</a> </p>
            </div>
        </div>
    </div>

    <!-- middle contents End-->

     <!-- Footer Start-->
        <footer>
            <div class="container-fluid center">
                <p  class="pull-right"><a href="Login.aspx">Back to Top</a> </p>
                <p style="background-color:#32343B">&copy 2017 PM Inno Lab </p>
                
            </div>
        </footer>

     <!-- Footer End-->

  
      
    </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</body>
</html>
