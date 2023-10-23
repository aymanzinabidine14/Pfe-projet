package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entities.Groupe;
import tools.DBInteraction;

public class GroupeDao {

	public List<Groupe> tousgrp(){
		List<Groupe> ds = new ArrayList<Groupe>();
		DBInteraction.connect();
		String sql="select * from groupe";
		ResultSet rs = DBInteraction.select(sql);
		try {
			while(rs.next()) {
				Groupe d= new Groupe(rs.getInt(1),rs.getInt(2));
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
