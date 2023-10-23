package entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import tools.DBInteraction;

public class User {
	private int id;
	private String log;
	private String pass;
	private String role;
	
	
	public User(int id, String log, String pass, String role) {
		this.id = id;
		this.log = log;
		this.pass = pass;
		this.role = role;
	}
	
	public User() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLog() {
		return log;
	}

	public void setLog(String log) {
		this.log = log;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public User authentification(String log,String pass) {
		User u=null;
		DBInteraction.connect();
		String sql="select * from user where log='"+log+"' and pass='"+pass+"'";
		ResultSet rs= DBInteraction.select(sql);
		try {
			if(rs.next())
				u= new User();
				u.setId(rs.getInt(1));
				u.setLog(rs.getString(2));
				u.setPass(rs.getString(3));
				u.setRole(rs.getString(4));
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return u;
	}
	
	
	

}
     
   
