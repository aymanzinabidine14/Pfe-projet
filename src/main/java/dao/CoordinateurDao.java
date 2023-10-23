package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Coordinateur;
import entities.Departement;
import tools.DBInteraction;

public class CoordinateurDao {
	public static Coordinateur findUserById(int id) {
		Coordinateur co= null;
		DBInteraction.connect();
		String sql="select * from coordinateur where id ="+id;
		ResultSet rs= DBInteraction.select(sql);
		try {
			if(rs.next())
				co= new Coordinateur(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getString(5), rs.getString(6));
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		DBInteraction.disconnect();
		return co;		
	}

	public int ajoutercoordinateur(int id, String nom,String prenom,String email,int fil_id) {
		DBInteraction.connect();
		String sql="insert into coordinateur values("+id+",'"+nom+"','"+prenom+"','"+email+"','NULL','coordinateur',"+fil_id+")";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int supprimercoordinateur(int ppr) {
		DBInteraction.connect();
		String sql="delete from coordinateur where id ="+ppr;
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int modifiercoordinateur(int id, String nom,String prenom,String email,int fil_id) {
		DBInteraction.connect();
		String sql="update departement set nom='"+nom+"', prenom='"+prenom+"', email='"+email+"', filliere_id="+fil_id+" where id="+id;
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public List<Coordinateur> touscoord(){
		List<Coordinateur> cs = new ArrayList<Coordinateur>();
		DBInteraction.connect();
		String sql="select * from coordinateur";
		ResultSet rs = DBInteraction.select(sql);
		try {
			while(rs.next()) {
				Coordinateur c= new Coordinateur(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				cs.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return cs;
	}

}
