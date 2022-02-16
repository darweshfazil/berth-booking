package web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class user_database_operations{
	public static void establishconnection() {
		Connection con=null;
	    try{
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/details", "root", "Password123$");
	    }
	    catch (ClassNotFoundException e){
	    	System.out.println(e);
	    } 
	    catch (SQLException e){
	    	System.out.println(e);
	    }
	}
	public static void registerData(UserModel user) {
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
			
			PreparedStatement stmt = con.prepareStatement("insert into details.user values(?,?,?,?,?)");
			
			stmt.setString(1,user.getUsername());
			stmt.setString(2,user.getEmail());
			stmt.setString(3,user.getPhone());
			stmt.setString(4,user.getJob());
			stmt.setString(5,user.getPassword());
			stmt.executeUpdate();
			con.close();  
		}
		
		catch(Exception e){
			System.out.println(e);
		}
	}
	public static void bookBerth(BookBerth user) {
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
			
			PreparedStatement stmt = con.prepareStatement("insert into details.booking values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			stmt.setString(1,user.getVesselNo());
			stmt.setString(2,user.getVesselName());
			stmt.setString(3,user.getVesselOwner());
			stmt.setString(4,user.getOwnerPhone());
			stmt.setString(5,user.getAgencyName());
			stmt.setString(6,user.getAgentName());
			stmt.setString(7,user.getAgencyEmail());
			stmt.setString(8,user.getAgentPhone());
			stmt.setString(9,user.getAgentCity());
			stmt.setString(10,user.getAgencyPincode());
			stmt.setString(11,user.getFrom());
			stmt.setString(12,user.getTo());
			stmt.setString(13,user.getDeptDate());
			stmt.setString(14,user.getDeptTime());
			stmt.setString(15,user.getArrivDate());
			stmt.setString(16,user.getArrivTime());
			stmt.setString(17,user.getLength());
			stmt.setString(18,user.getType());
			stmt.setString(19,user.getPort());
			stmt.setString(20,user.getStatus());
			stmt.executeUpdate();
			con.close();  
		}
		
		catch(Exception e){
			System.out.println(e);
		}
	}
	public static UserModel checkLogin(String email, String password) throws SQLException,ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");  
		  
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
		
		String sql = "SELECT * FROM user WHERE email = ? and password = ?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, email);
		stmt.setString(2, password);
		
		ResultSet result = stmt.executeQuery();
		
		UserModel user = null;
		
		if (result.next()) {
		    user = new UserModel(result.getString("username"),result.getString("email"),result.getString("phone"),result.getString("job"),result.getString("password"));
		}
		
		con.close();
		
		return user;
	}
	public static ArrayList<BookBerth> readData() {
		ArrayList<BookBerth> list = new ArrayList<BookBerth>();
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
			
			PreparedStatement stmt = con.prepareStatement("select * from booking where status='pending' OR status='cancel'");
			
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				String vesselno = rs.getString(1);
			    String vesselname = rs.getString(2);
			    String vesselowner = rs.getString(3);
			    String ownerphone = rs.getString(4);
			    String agencyname = rs.getString(5);
			    String agentname = rs.getString(6);
			    String agencyemail = rs.getString(7);
			    String agentphone = rs.getString(8);
			    String agentcity = rs.getString(9);
			    String agencypincode = rs.getString(10);
			    String from = rs.getString(11);
			    String to = rs.getString(12);
			    String deptdate = rs.getString(13);
			    String depttime = rs.getString(14);
			    String arrivdate = rs.getString(15);
			    String arrivtime = rs.getString(16);
			    String length = rs.getString(17);
			    String type = rs.getString(18);
			    String port = rs.getString(19);
			    String status = rs.getString(20);
			    BookBerth book = new BookBerth(vesselno, vesselname, vesselowner, ownerphone, agencyname, agentname,
			    		agencyemail, agentphone, agentcity, agencypincode, from, to, deptdate, depttime, arrivdate,
			    		arrivtime, length, type, port, status);
			    list.add(book);
			}
			con.close();			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return list;
	}
	public static ArrayList<CancelBerth> readCancelData() {
		ArrayList<CancelBerth> l = new ArrayList<CancelBerth>();
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
			
			PreparedStatement stmt = con.prepareStatement("select * from cancel");
			
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				String vesselno = rs.getString(1);
			    String vesselname = rs.getString(2);
			    String ownerphone = rs.getString(3);
			    String agencyemail = rs.getString(4);
			    String agentphone = rs.getString(5);
			    String from = rs.getString(6);
			    String to = rs.getString(7);
			    String deptdate = rs.getString(8);
			    String depttime = rs.getString(9);
			    String arrivdate = rs.getString(10);
			    String arrivtime = rs.getString(11);
			    String port = rs.getString(12);
			    String status = rs.getString(13);
			    CancelBerth book = new CancelBerth(vesselno, vesselname, ownerphone, agencyemail, agentphone, from, to, deptdate, depttime, arrivdate, arrivtime, port, status);
			    l.add(book);
			}
			con.close();			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return l;
	}
	public static ArrayList<BookBerth> readApprovedData() {
		ArrayList<BookBerth> list = new ArrayList<BookBerth>();
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
			
			PreparedStatement stmt = con.prepareStatement("select * from booking where status = 'approved'");
			
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				String vesselno = rs.getString(1);
			    String vesselname = rs.getString(2);
			    String vesselowner = rs.getString(3);
			    String ownerphone = rs.getString(4);
			    String agencyname = rs.getString(5);
			    String agentname = rs.getString(6);
			    String agencyemail = rs.getString(7);
			    String agentphone = rs.getString(8);
			    String agentcity = rs.getString(9);
			    String agencypincode = rs.getString(10);
			    String from = rs.getString(11);
			    String to = rs.getString(12);
			    String deptdate = rs.getString(13);
			    String depttime = rs.getString(14);
			    String arrivdate = rs.getString(15);
			    String arrivtime = rs.getString(16);
			    String length = rs.getString(17);
			    String type = rs.getString(18);
			    String port = rs.getString(19);
			    String status = rs.getString(20);
			    BookBerth book = new BookBerth(vesselno, vesselname, vesselowner, ownerphone, agencyname, agentname,
			    		agencyemail, agentphone, agentcity, agencypincode, from, to, deptdate, depttime, arrivdate,
			    		arrivtime, length, type, port, status);
			    list.add(book);
			}
			con.close();			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return list;
	}
	public static ArrayList<BookBerth> readRejectedData() {
		ArrayList<BookBerth> list = new ArrayList<BookBerth>();
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
			
			PreparedStatement stmt = con.prepareStatement("select * from booking where status = 'rejected'");
			
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				String vesselno = rs.getString(1);
			    String vesselname = rs.getString(2);
			    String vesselowner = rs.getString(3);
			    String ownerphone = rs.getString(4);
			    String agencyname = rs.getString(5);
			    String agentname = rs.getString(6);
			    String agencyemail = rs.getString(7);
			    String agentphone = rs.getString(8);
			    String agentcity = rs.getString(9);
			    String agencypincode = rs.getString(10);
			    String from = rs.getString(11);
			    String to = rs.getString(12);
			    String deptdate = rs.getString(13);
			    String depttime = rs.getString(14);
			    String arrivdate = rs.getString(15);
			    String arrivtime = rs.getString(16);
			    String length = rs.getString(17);
			    String type = rs.getString(18);
			    String port = rs.getString(19);
			    String status = rs.getString(20);
			    BookBerth book = new BookBerth(vesselno, vesselname, vesselowner, ownerphone, agencyname, agentname,
			    		agencyemail, agentphone, agentcity, agencypincode, from, to, deptdate, depttime, arrivdate,
			    		arrivtime, length, type, port, status);
			    list.add(book);
			}
			con.close();			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return list;
	}
	public static void approveBerth(ApproveBerth user) {
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
			
			    if(user.getStatus().equals("Approved")||user.getStatus().equals("approved")) {
			    	PreparedStatement stmt1 = con.prepareStatement("update details.booking set status='approved' where vesselno=? and vesselname=? and deptdate=? and depttime=? and type=? and port=?");
			    	stmt1.setString(1, user.getVesselNo());
			    	stmt1.setString(2, user.getVesselName());
			    	stmt1.setString(3, user.getDeptDate());
			    	stmt1.setString(4, user.getDeptTime());
			    	stmt1.setString(5, user.gettype());
			    	stmt1.setString(6, user.getPort());
			    	stmt1.executeUpdate();
			    	con.close();
			    }
			    else if(user.getStatus().equals("rejected")||user.getStatus().equals("rejected")){
			    	PreparedStatement stmt2 = con.prepareStatement("update details.booking set status='rejected' where vesselno=? and vesselname=? and deptdate=? and depttime=? and type=? and port=?");
			    	stmt2.setString(1, user.getVesselNo());
			    	stmt2.setString(2, user.getVesselName());
			    	stmt2.setString(3, user.getDeptDate());
			    	stmt2.setString(4, user.getDeptTime());
			    	stmt2.setString(5, user.gettype());
			    	stmt2.setString(6, user.getPort());
			    	stmt2.executeUpdate();
			    	con.close();
			    }
						
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
	public static void CancelBerth(CancelBerth user) {
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","Password123$");
			
			PreparedStatement stmt = con.prepareStatement("insert into details.cancel values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			stmt.setString(1,user.getVesselNo());
			stmt.setString(2,user.getVesselName());
			stmt.setString(3,user.getOwnerPhone());
			stmt.setString(4,user.getAgencyEmail());
			stmt.setString(5,user.getAgentPhone());
			stmt.setString(6,user.getFrom());
			stmt.setString(7,user.getTo());
			stmt.setString(8,user.getDeptDate());
			stmt.setString(9,user.getDeptTime());
			stmt.setString(10,user.getArrivDate());
			stmt.setString(11,user.getArrivTime());
			stmt.setString(12,user.getPort());
			stmt.setString(13,user.getStatus());
			stmt.executeUpdate();
			
			PreparedStatement stmt1 = con.prepareStatement("update details.booking set status='cancel' where vesselno=? and vesselname=? and deptdate=? and depttime=? and arrivdate=? and arrivtime=? and port=?");
	    	stmt1.setString(1, user.getVesselNo());
	    	stmt1.setString(2, user.getVesselName());
	    	stmt1.setString(3, user.getDeptDate());
	    	stmt1.setString(4, user.getDeptTime());
	    	stmt1.setString(5, user.getArrivDate());
	    	stmt1.setString(6, user.getArrivTime());
	    	stmt1.setString(7, user.getPort());
	    	stmt1.executeUpdate();
	    	con.close();
	    	
		}
		
		catch(Exception e){
			System.out.println(e);
		}
	}
	public static void main(String[] args) {
		establishconnection();
	}
}