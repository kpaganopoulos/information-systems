<%@ page import="java.io.*, java.sql.*,java.util.*, Database_Folder.*" %>
<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page errorPage="ErrorPage.jsp" %>

<% request.setCharacterEncoding("UTF-8"); %>
<%  String specialty = request.getParameter("specialtyField");
    String area = request.getParameter("areaField");

	%>
	
<%

		if(specialty.length() == 0 && area.length() == 0){
			throw new Exception("Δεν έχετε εισάγει ειδικότητα και περιοχή.");
		} else if (specialty.length() == 0){
			throw new Exception("Δεν έχετε εισάγει ειδικότητα.");
		} else if (area.length() == 0){
			throw new Exception("Δεν έχετε εισάγει περιοχή.");	
		}

		%>		


	
		<jsp:forward page="ResultsPage.jsp" />	