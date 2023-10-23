package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Departement;
import tools.DBInteraction;

public class DepartementDao {
	public int ajouterdepartement(int id, String nom) {
		DBInteraction.connect();
		String sql="insert into departement values("+id+",'"+nom+"')";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int supprimerdepartement(int id) {
		DBInteraction.connect();
		String sql="delete from departement where id ="+id;
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int modifierdepartement(int id, String nom) {
		DBInteraction.connect();
		String sql="update departement set id="+id+",nom='"+nom+"'";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public List<Departement> tousdept(){
		List<Departement> ds = new ArrayList<Departement>();
		DBInteraction.connect();
		String sql="select * from departement";
		ResultSet rs = DBInteraction.select(sql);
		try {
			while(rs.next()) {
				Departement d= new Departement(rs.getInt(1),rs.getString(2));
				ds.add(d);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return ds;
	}

}
