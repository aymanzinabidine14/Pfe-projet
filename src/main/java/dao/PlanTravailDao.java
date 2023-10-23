package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import entities.PlanTravail;
import tools.DBInteraction;

public class PlanTravailDao {
	public static PlanTravail findPlanById(int id) {
		PlanTravail pt= null;
		DBInteraction.connect();
		String sql="select * from plantravail where id ="+id;
		ResultSet rs= DBInteraction.select(sql);
		try {
			if(rs.next())
				pt= new PlanTravail(rs.getInt(1), rs.getInt(2));
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		DBInteraction.disconnect();
		return pt;		
	}

}
