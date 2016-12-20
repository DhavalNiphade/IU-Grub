<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    
<!-- CHARACTER ENCODING -->    
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
<!-- TITLE -->        
    
        <title>
            Login - IU GRUB - Say hello to hunger
        </title>
    
<!-- LINK SECTION -->
<link href= "<c:url value="/ui-resources/css/bootstrap-theme.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/ui-resources/css/base.css" />" rel="stylesheet" type="text/css">
<link href= "<c:url value = "/ui-resources/fonts/glyphicons-halflings-regular.svg"/>" rel="stylesheet" type="text/css">
<link href= "<c:url value="/ui-resources/css/glyphicons.css"/>" rel="stylesheet" type="text/css"> 
    

    
<!-- META SECTION -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="Food, Restaurants, Indiana, Bloomington, Indiana University, IU GRUB, IU">
<meta name="description" content="Restaurants and food in Indiana University at Bloomington. Discover new eateries and offers on pizzas, burgers, sandwiches and other local cuisines around you.">
    
<!-- BACKGROUND OVERRIDE -->
<style>
    body{background: #FCFCFC !important;}
</style>
</head>
    
<body>

<!-- PRIMARY NAV BAR -->
    <div class="navbar navbar-default navbar-fixed-top align-form">
        <div class="container-fluid">
            <a href="menu.html" class="navbar-brand">IU GRUB</a>    <!-- INSERT LOGO HERE -->
            
            <!-- SEARCH BAR -->
            <div class="col-sm-3 col-md-3">
            <form class="navbar-form" role="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="q">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form>
            </div>
            
            <!-- RESPONSIVE COLLAPSE -->
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <!--MENU ITEMS-->
            <div class="collapse navbar-collapse navHeaderCollapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="home">Home</a></li>
                    <li><a href="offers">Offers</a></li>
                    <li><a href="restaurants">Restaurants</a></li>
                    <li class = "dropdown">
                        <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">Contact Us <b class="caret"></b></a>
                        <ul class = "dropdown-menu">
                            <li><a href="contact">Feedback</a></li>
                            <li><a href="contact">Become an Affiliate</a></li>
                        </ul>        
                    </li>
                    <li class="active"><a href="#">Login/Register</a></li>                
                </ul>
            </div>           
        </div>
</div>

<!--LOGIN FORM-->
<br><br><br><br><br><br><br><br><br><br>
    
<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-success">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Welcome back! Please sign in here!</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" class="remove-border" id="loginform">
                    <fieldset style="border:none">
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="E-mail" name="email" type="text" id="email" title="Your registered email address">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="" id="password" title="Make sure your caps-lock is off">
			    		</div>
			    		<div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="Remember Me"> Remember Me
			    	    	</label>
			    	    </div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Login" id="submit">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
    
<!-- BOTTOM BAR -->

<div class="navbar navbar-default navbar-fixed-bottom" id="bottombar">
<div class="container-fluid">
    <p class="navbar-text pull-left">Site in Alpha</p>
    <a class="navbar-btn btn btn-danger pull-right" id="bottombutton"><small>Close X</small></a>
    </div>
</div>

<!--PAGE FOOTER-->
<footer class="centered">
<p><small>Copyright. All rights reserved.</small></p>
</footer>


<!-- SCRIPT SECTION -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="<c:url value="/ui-resources/js/root.js"/>" type="text/javascript"></script>
<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
<script type="text/javascript">
    
$(document).ready(function(){    

$("#submit").click(function(){
    var email = $("#email").val();
    var password =$("#password").val();
    if((email=="")||(password=="")){
        $('input[type="text"],input[type="password"]').css("border","0.5px groove red");
        $('input[type="text"],input[type="password"]').css("box-shadow","0 0 1px red");
        
        $("#alertbox").removeClass("hidden");
            
        return false;
    }
    });

    
    /* RESET FIELDS if user removes button  */
$("#resetFields").click(function(){
    $("#alertbox").addClass("hidden");
    $('input[type="text"],input[type="password"]').css("border","2px solid white");
    $('input[type="text"],input[type="password"]').css("box-shadow","0 0 3px blue");
    $("#email").val("");
    $("#password").val("");
    return true;
});

}); //Document ready closer
    
</script>
    
</body>
</html>
    

