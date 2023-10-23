package dao;

import static java.lang.Integer.parseInt;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Etudiant;
import entities.Professeur;
import tools.DBInteraction;

public class EtudiantDao {
	public static Etudiant findUserById(int id) {
		Etudiant e= null;
		DBInteraction.connect();
		String sql="select * from etudiant where id ="+id;
		ResultSet rs= DBInteraction.select(sql);
		try {
			if(rs.next())
				e= new Etudiant(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		DBInteraction.disconnect();
		return e;		
	}
	
	public List<Etudiant> tousetu(){
		List<Etudiant> ps = new ArrayList<Etudiant>();
		DBInteraction.connect();
		String sql="select * from etudiant";
		ResultSet rs = DBInteraction.select(sql);
		try {
			while(rs.next()) {
				Etudiant p= new Etudiant(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				ps.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return ps;
	}
	
	
	public List<Etudiant> etuby_grp(int idgr){
		List<Etudiant> ps = new ArrayList<Etudiant>();
		DBInteraction.connect();
		String sql="select * from etudiant where groupe_id="+idgr;
		ResultSet rs = DBInteraction.select(sql);
		try {
			while(rs.next()) {
				Etudiant p= new Etudiant(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				ps.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return ps;
	}
	
	public int ajouteretudiant(int id, String nom,String prenom,String email,int fil_id) {
		DBInteraction.connect();
		String sql="insert into etudiant values("+id+",'"+nom+"','"+prenom+"','"+email+"','NULL','etudiant','NULL',NULL,0,"+fil_id+")";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int ajouteretudiants(String fcsv) throws IOException {
		DBInteraction.connect();
		int nb= DBInteraction.Majs(fcsv);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int modifieretudiant(int id, String nom,String prenom,String email,int fil_id) {
		DBInteraction.connect();
		String sql="insert into etudiant values("+id+",'"+nom+"','"+prenom+"','"+email+"','NULL','etudiant','NULL','NULL',0,"+fil_id+")";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int supprimeretudiant(int id) {
		DBInteraction.connect();
		String sql="delete from etudiant where id ="+id;
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}


}
