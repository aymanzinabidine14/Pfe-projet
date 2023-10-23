package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Filliere;
import tools.DBInteraction;


public class FilliereDao {
	public int ajouterfilliere(int id, String nom, int departement_id) {
		DBInteraction.connect();
		String sql="insert into filliere values("+id+",'"+nom+"',NULL,"+departement_id+")";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int supprimerfilliere(int id) {
		DBInteraction.connect();
		String sql="delete from filliere where id ="+id;
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int modifierfilliere(int id, String nom) {
		DBInteraction.connect();
		String sql="update filliere set id="+id+",nom='"+nom+"'";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public List<Filliere> tousfill(){
		List<Filliere> ds = new ArrayList<Filliere>();
		DBInteraction.connect();
		String sql="select * from filliere";
		ResultSet rs = DBInteraction.select(sql);
		try {
			while(rs.next()) {
				Filliere d= new Filliere(rs.getInt(1),rs.getString(2));
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
