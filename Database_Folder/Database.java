package Database_Folder;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Database{

	Connection con;

	private String errorMessages = "";



	public String getErrorMessages() {
		return errorMessages;
    }

    public Database(){

	}

	public void open(){
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		}catch(Exception e) {
			errorMessages = "MySQL Driver error: <br>" + e.getMessage();
        }
		try{
			con=DriverManager.getConnection("jdbc:mysql://195.251.249.131:3306/ismgroup55","ismgroup55","bpu$b0");
		}catch (SQLException ex){
			errorMessages = "Could not establish connection with the Database Server: " + ex.getMessage();
			con = null;
	    }
	}

	public void close(){
		try {
			con.close();
		}catch(SQLException exx){
			errorMessages = "Could not close connection with the Database Server: " + exx.getMessage();
		}
	}


	public List<Professional> getAllProfessionals(String area, String specialty) throws SQLException, IllegalArgumentException {
		PreparedStatement statement = null;
		ResultSet result = null;
		List<Professional> prof_list = new ArrayList<Professional>();
		try {
			String profQuery = "SELECT * FROM professional WHERE area=? AND specialty=?";
			statement = con.prepareStatement(profQuery);
			statement.setString(1,area);
			statement.setString(2,specialty);
			result = statement.executeQuery();

			if(!result.next()){

				throw new IllegalArgumentException("Δεν υπάρχει professional με αυτά τα στοιχεία.");

			}

			result.previous();

			while(result.next()) {

				int profID = result.getInt("profID");
				String profName = result.getString("profName");
				String profEmail = result.getString("profEmail");
				area = result.getString("area");
				specialty = result.getString("specialty");
				String phoneNumber = result.getString("phoneNumber");
				String address = result.getString("address");
				String comment = result.getString("comment");
				Double rating = result.getDouble("rating");

				Professional professionals = new Professional(profID,profName,profEmail,area,specialty,phoneNumber,address,comment,rating);
		       	prof_list.add(professionals);


			}
			statement.close();
			return prof_list;


			}catch(SQLException exe){
				errorMessages = "Error while getting the professionals from database!" + exe.getMessage();
				throw new SQLException(errorMessages);
		    }
	}
}
















