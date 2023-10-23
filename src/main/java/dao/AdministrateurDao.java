package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;

import entities.Administrateur;
import tools.DBInteraction;

public class AdministrateurDao{
	public static Administrateur findUserById(int id) {
		Administrateur ad= null;
		DBInteraction.connect();
		String sql="select * from administrateur where id ="+id;
		ResultSet rs= DBInteraction.select(sql);
		try {
			if(rs.next())
				ad= new Administrateur(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6));
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		DBInteraction.disconnect();
		return ad;		
	}
	
	public int modifieradministrateur(int id,String email, String mdp) {
		DBInteraction.connect();
		String sql="update administrateur set motDePasse='"+mdp+"',email='"+email+"' where id="+id;
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	

}
