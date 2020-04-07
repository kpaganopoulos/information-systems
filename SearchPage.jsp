<%@ page import="java.io.*, Database_Folder.*"%>


<%--   Set content type --%>
<%@ page contentType="text/html; charset=utf-8" %>
    
<% request.setCharacterEncoding("UTF-8"); %>


<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../bootstrap-3.3.5/docs/favicon.ico">

    <title> Search </title>

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
        <h3 class="text-muted">Aναζήτηση Professional</h3>
      </div>


      <div class="jumbotron">
        <h1>Αναζητήστε Professionals</h1>
        <p class="lead">Ξεκινήστε την αναζήτηση!</p>
	   </div>

      <div class="row marketing">
	  <div class="col-lg-20">
          <form class="form" action="Controller.jsp" method="post" name="form1">
			<div class="form-group">
				<label for= "adeptness">Ειδικότητα:</label>
				<input name= "specialtyField" type="adeptness" class= "form-control" id="specialty" placeholder="π.χ. Χειρουργός " style="width: 300px">
		   </div>
           <div class="form-group">
			<label for="area">Περιοχή:</label>
			<input name= "areaField" type="area" class="form-control" id="area" placeholder="π.χ. Αιγάλεω" style="width: 300px">
        </div>
		<p><input class="btn btn-lg btn-success" type="submit" role="button" value="Search"></p>
		</form>
			<div class="col-lg-20">
				<h4>Ειδικότητα</h4>
					<p>Στο πεδίο <I> Ειδικότητα </I> εισάγετε την ειδικότητα των professionals προς αναζήτηση <u>με ελληνικούς χαρακτήρες.</u></p>

				<h4>Περιοχή</h4>
					<p>Στο πεδίο <I> Περιοχή </I> εισάγετε το προάστιο της Αθήνας όπου επιθυμείτε να αναζητήσετε professionals <u>με ελληνικούς χαρακτήρες.</u></p>

				<h4>Search</h4>
					<p>Πατώντας το κουμπί αναζήτησης (Search) ξεκινά η αναζήτηση των professionals με βάση την ειδικότητα και περιοχή που επιλέχθηκαν παραπάνω.</p>
			</div>
		</div> 
		</div><!-- /container -->

      <footer class="footer">
        <p>&copy; Τμήμα Διοικητικής Επιστήμης και Τεχνολογίας 2015</p>
      </footer>


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>