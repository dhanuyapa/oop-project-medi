package pkg.patient;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class patientDButil {
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<patient> validate(String username,String password){
		ArrayList<patient>cus1=new ArrayList<>();
		
		//create dataBase
		//String url="jdbc:mysql://localhost:3306/patiendetails";
		//String user ="root";
		//String pass="123456";
		
		//validate
		try {
			con=DBConnect.getConnection();	
			stmt=con.createStatement();
			//Class.forName("com.mysql.jdbc.Driver");
			
			//Connection con=DriverManager.getConnection(url,user,pass);
			//Statement stmt=con.createStatement();
			
			String sql="select *from patient where UserName='"+username+"'and Password='"+password+"'";
			//ResultSet rs=stmt.executeQuery(sql);
			rs=stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String fname=rs.getString(2);
				String lname=rs.getString(3);
				String telephone=rs.getString(4);
				String email=rs.getString(5);
				String userName=rs.getString(6);
				String passWord=rs.getString(7);
				
				
				patient p=new patient(id,fname,lname,telephone,email,userName,password);
				cus1.add(p);
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		return cus1;
	}
	
public static boolean insertcustomer(String fname,String lname,String telephone,String email,String uname,String password) {

boolean isSuccess=false;


//create dataBase
		//String url="jdbc:mysql://localhost:3306/patiendetails";
		//String user ="root";
		//String pass="123456";
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
	//Class.forName("com.mysql.jdbc.Driver");
			
			//Connection con=DriverManager.getConnection(url,user,pass);
			//Statement stmt=con.createStatement();
			
			String sql="insert into patient values(0,'"+fname+"','"+lname+"','"+telephone+"','"+email+"','"+uname+"','"+password+"')";
			int rs=stmt.executeUpdate(sql);	
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}

return isSuccess;
}

public static boolean updatepatient(String id,String fname,String lname,String telephone,String email,String userName,String password) {
	 
	boolean isSuccess=false;
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql= "update patient set FirstName='"+fname+"',LastName='"+lname+"',Telephone='"+telephone+"',Email='"+email+"',UserName='"+userName+"',Password='"+password+"'"
				+ "where id='"+id+"'";
		int rs=stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}else {
		isSuccess=false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}

public static List<patient> getpatientDeatails(String id){
	
	int convertID=Integer.parseInt(id);
	ArrayList<patient> cus=new ArrayList<>();
	
	
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql= "select * from patient where id='"+convertID+"'";
	    rs=stmt.executeQuery(sql);
	    
	    while(rs.next()) {
	    	int Id=rs.getInt(1);
	    	String fname=rs.getString(2);
	    	String lname=rs.getString(3);
	    	String telephone=rs.getString(4);
	    	String email=rs.getString(5);
	    	String userName=rs.getString(6);
	    	String password=rs.getString(7);
	    	
	    	patient c=new patient(Id,fname,lname,telephone,email,userName,password);
	    	cus.add(c);
	    	
	    	
	    }
	}
	catch(Exception e) {
		e.printStackTrace();
		}
	
	return cus;
	
}

public static boolean deletePatient(String id) {
	boolean isSuccess = false;
	
	int convId=Integer.parseInt(id);
	
	
	
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		
		String sql="delete from patient where id='"+convId+"'"; //coloumn name and convId int ekak String krpu nis
	    int r=stmt.executeUpdate(sql);
	    
	    if(r>0) {
	    	isSuccess=true;
	    }
	    else {
	    	isSuccess=false;
	    }
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
}
}
