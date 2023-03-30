package Helper_package;

import java.sql.Statement;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.coyote.http11.filters.SavedRequestInputFilter;

import pojo.Jiraticket_view;

public class Helper_class {
	
	private static Connection getallConnectionObject() {
		
		Connection con=null;
		String driver = "com.mysql.jdbc.Driver";
		String url="jdbc:mysql://" + "localhost:3306/Jira_Ticket_webproject?characterEncoding=latin1";
		String username="root";
		String password="masskk64";

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,username,password);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;

		
	}

	public static String authenticateuser(String mail, String password) {

		boolean result = false;
		String username = "";
		try {
		
			Connection con = Helper_class.getallConnectionObject();
			
			PreparedStatement pt = con.prepareStatement("select * from User_details " + "where E_mail=?" + "and Pass_Word=?");

			pt.setString(1, mail);
			pt.setString(2, password);

			ResultSet rs = pt.executeQuery();

			while (rs.next()) {
				username = rs.getString(2);	
			}

			con.close();
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return username;
			
			}
			
	public static boolean insertuser(String firstname, String lastname, String email, String mobile, String password) {
		boolean result = false;

		try {
			Connection con = Helper_class.getallConnectionObject();

			PreparedStatement ps = con.prepareStatement(
					"insert into User_details(First_Name,Last_Name,E_mail,Mobile_no,Pass_Word)" + " values(?,?,?,?,?)");

			
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, email);
			ps.setString(4, mobile);
			ps.setString(5, password);

			int row = ps.executeUpdate();
			if (row > 0)
				result = true;
			
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
		
	}

	public static boolean createTicket(String assignee, String reportee, String problem, String notify, String status) {
		boolean result = false;

		try {
			Connection con = Helper_class.getallConnectionObject();

			PreparedStatement ps = con.prepareStatement(
					"insert into Jira_details(Jira_Assigneename,Jira_Reportername,Jira_problem,Jira_notify_mail,Jira_Status) " + " values(?,?,?,?,?)");

			
			ps.setString(1, assignee);
			ps.setString(2, reportee);
			ps.setString(3, problem);
			ps.setString(4, notify);
			ps.setString(5, status);

			int row = ps.executeUpdate();
			while(row > 0) {
				result = true;
				break;
			}
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}


	public static ArrayList<Jiraticket_view> ViewAllTicket() {
		
		ArrayList<Jiraticket_view> arr=new ArrayList<Jiraticket_view>();
	
		try {
			Connection con = Helper_class.getallConnectionObject();
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery("select * from Jira_details");
			
			Jiraticket_view jt=null;
	
			while (rs.next()) {
				
				jt=new Jiraticket_view(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
		
				arr.add(jt);
			}

			con.close();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return arr;	
	}


	public static boolean deleteticket(int id) {
		boolean result=false;
		String username="";
		
		try {
			Connection con = Helper_class.getallConnectionObject();
			PreparedStatement pst=con.prepareStatement("delete from Jira_details where Jira_Id=?");
			
		    pst.setInt(1, id);
		    int i=pst.executeUpdate();

			while (i>0) {
				result=true;
				break;
			}
			con.close();

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return result;
		}


	public static ArrayList<Jiraticket_view> viewoneticket(int id) {
		
		ArrayList<Jiraticket_view> arr=new ArrayList<Jiraticket_view>();
		
		try {
			Connection con = Helper_class.getallConnectionObject();
			PreparedStatement  st=con.prepareStatement("select * from Jira_details where Jira_Id=?");
			st.setInt(1, id);
			
			ResultSet rs=st.executeQuery();
			
			Jiraticket_view jt=null;
	
			while (rs.next()) {
				
				jt=new Jiraticket_view(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
		
				arr.add(jt);
			}
			con.close();

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return arr;	
	}


	public static ArrayList<String> viewdetails() {
		
		ArrayList<String> arrayList = new ArrayList<String>();
		try {
			Connection con = Helper_class.getallConnectionObject();	
			Statement pt = con.createStatement();
			ResultSet rs = pt.executeQuery("select * from User_details");


			while (rs.next()) {

				arrayList.add(rs.getString(4));
			}
          con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arrayList;

	}


	public static boolean UpdateSingleTicket( String assignee, String reporter, String problem,String notify, String status,int id) {
	 boolean result=false;
		try {
			Connection con = Helper_class.getallConnectionObject();
			PreparedStatement  st=con.prepareStatement("update Jira_details set Jira_Assigneename=?,Jira_Reportername=?,Jira_problem=?,Jira_notify_mail=?,Jira_Status=? where Jira_Id=?");
			
			int k=0;
			st.setString(++k, assignee);
			st.setString(++k, reporter);
			st.setString(++k, problem);
			st.setString(++k, notify);
			st.setString(++k, status);
			st.setInt(++k, id);
			
			int i=st.executeUpdate();
			while (i>0) {
				result=true;
				break;
			}
			con.close();
		  
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return result;	
	}

	public static ArrayList<Jiraticket_view> viewFilterTicket(String query, String value) {
		ArrayList<Jiraticket_view> arrayList = new ArrayList<Jiraticket_view>();
		try {
			Connection con =Helper_class.getallConnectionObject();
			PreparedStatement pt = con.prepareStatement(query);
			pt.setString(1, value);
			
			ResultSet rs = pt.executeQuery();

			Jiraticket_view jira = null;

			while (rs.next()) {

				jira = new Jiraticket_view(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6));

				arrayList.add(jira);

			}
			con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arrayList;

	}
	}