package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.User;
import tools.DBInteraction;

public class UserDao {	

	
	public User authentification(String log,String pass) {
		User u=null;
		DBInteraction.connect();
		String sql="select * from users where email='"+log+"' and motDePasse='"+pass+"'";
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
