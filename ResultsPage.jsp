<%@ page import="java.io.*, java.sql.*,java.util.*, Database_Folder.*" %>
<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page errorPage="ErrorPage.jsp" %>

<% request.setCharacterEncoding("UTF-8"); %>

 
 	<%String specialtyField = request.getParameter("specialtyField");
    String areaField = request.getParameter("areaField"); %>
	


<%
	Database database = new Database();
	database.open();
	List<Professional> myPeople = database.getAllProfessionals(areaField,specialtyField);
	database.close(); 
%>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../bootstrap-3.3.5/docs/favicon.ico">

    <title>ResultsPage</title>

    <!-- Bootstrap core CSS -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../css/jumbotron-narrow.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../bootstrap-3.3.5/docs/assets/js/ie-emulation-modes-warning.js"></script>

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
       	 <ul class="nav nav-pills pull-left">
		            <li role="presentation" class="active"><a href="SearchPage.jsp">Back</a></li>
          </ul>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="HomePage.html">Home</a></li>
          </ul>
        </nav>
        <h3 align="center" class="text-muted">Αναζήτηση Professional </h3>
      </div>

      <div class="jumbotron">
	   <div class="bg-success">
        <h1><I>Αποτελέσματα Αναζήτησης:</I></h1>
	   </div>
     </div>

	  <div class="row marketing">
        <div class="col-lg-20">
          <div class="row">
			<div class="col-md-6">
				<table class="table table-bordered">
				  <thead>
					<tr>
						<th>Ονοματεπώνυμο</th>
						<th>Περιοχή</th>
						<th>Ειδικότητα</th>
						<th>Στοιχεία Επικοινωνίας<br>(Τηλέφωνο και E-mail)</th>
						<th>Διεύθυνση</th>
						<th>Αξιολόγηση<br>(Σχόλια ή Βαθμολογία)</th>
					</tr>
					<thead>
					<tbody>
					<%  for(Professional prof : myPeople){ %>
						<tr>
							<td><I><%= prof.getProfName() %></I></td>
							<td><I><%= prof.getArea() %></I></td>
							<td><I><%= prof.getSpecialty() %></I></td>
							<td><I>Τηλέφωνο: <%= prof.getPhoneNumber() %> <br>E-mail: <%= prof.getProfEmail() %>
							<td><I><%= prof.getAddress()%></I></td>
							<td><I>
								<%= prof.getComment()%>
								<%= prof.getRating()%>/5
								<p><a class="btn btn-lg btn-success" href="SignInCommentPage.jsp" role="button">Comment</a></p>
								<p><a class="btn btn-lg btn-success" href="SignInRatingPage.jsp" role="button">Rate</a></p>
							</I></td>
					</I></td>
					</tr>
					<% } %>
				</tbody>
			</table>

        </div>
	</div>
	    <p>Παραπάνω παρουσιάζονται αναλυτικά τα αποτελέσματα της αναζήτησης για τον professional
		   με ειδικότητα και περιοχή σύμφωνες με αυτές που έδωσε ο χρήστης στην σελίδα Αναζήτησης. Συγκεκριμένα αναφέρονται
		   το ονοματεπώνυμο του ειδικού, η ειδικότητά του, η περιοχή όπου εργάζεται, ορισμένα στοιχεία
		   που συντελούν στην καλύτερη εξυπηρέτηση, καθώς και τα στοιχεία επικοινωνίας του.</p>
		</div>


    </div> <!-- /container -->

	<footer class="footer">
        <p>&copy; Τμήμα Διοικητικής Επιστήμης και Τεχνολογίας 2015</p>
    </footer>


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../bootstrap-3.3.5/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>