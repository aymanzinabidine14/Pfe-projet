package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Coordinateur;
import entities.Professeur;
import tools.DBInteraction;

public class ProfesseurDao {
	public static Professeur findUserById(int id) {
		Professeur pf= null;
		DBInteraction.connect();
		String sql="SELECT * FROM professeur p join groupe g where p.id=g.encadrant_id and g.id="+id;
		ResultSet rs= DBInteraction.select(sql);
		try {
			if(rs.next())
				pf= new Professeur(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8));
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		DBInteraction.disconnect();
		return pf;		
	}
	
	public List<Professeur> tousprof(){
		List<Professeur> ps = new ArrayList<Professeur>();
		DBInteraction.connect();
		String sql="select * from professeur";
		ResultSet rs = DBInteraction.select(sql);
		try {
			while(rs.next()) {
				Professeur p= new Professeur(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(6),rs.getInt(7));
				ps.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return ps;
	}
	
	public int ajouterprofesseur(int id, String nom,String prenom,int grade,String role,String email,int fil_id) {
		DBInteraction.connect();
		String sql="insert into professeur values("+id+",'"+nom+"','"+prenom+"','"+email+"','NULL','"+role+"',"+grade+",'NULL',"+fil_id+")";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int modifierprofesseur(int id, String nom,String prenom,int grade,String role,String email,int fil_id) {
		DBInteraction.connect();
		String sql="insert into coordinateur values("+id+",'"+nom+"','"+prenom+"','"+email+"','NULL','coordinateur',"+fil_id+")";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int supprimerprofesseur(int ppr) {
		DBInteraction.connect();
		String sql="delete from professeur where id ="+ppr;
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}

}
