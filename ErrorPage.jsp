﻿<%@ page import="java.io.*, java.sql.*,java.util.*, Database_Folder.*" %>
<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page isErrorPage="true"%>

<% request.setCharacterEncoding("UTF-8"); %>


	
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../bootstrap-3.3.5/docs/favicon.ico">

    <title> Error Page </title>

    <!-- Bootstrap core CSS -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../css/jumbotron-narrow.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
<body>

    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="HomePage.html">Home</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Αναζήτηση Professional</h3>
      </div>

      <div class="jumbotron">
        <h1>Λάθος στοιχεία εισαγωγής</h1>
		<div class='alert alert-danger' role='alert'>
	     <%= exception.getMessage()%>
		 
		</div>
        <p><a class="btn btn-lg btn-success" href="SearchPage.jsp" role="button">Δοκιμάστε ξανά!</a></p>
      </div>
	  
	 
	
	<footer class="footer">
        <p>&copy; Τμήμα Διοικητικής Επιστήμης και Τεχνολογίας 2015</p>
    </footer>


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../bootstrap-3.3.5/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
  
  
  

