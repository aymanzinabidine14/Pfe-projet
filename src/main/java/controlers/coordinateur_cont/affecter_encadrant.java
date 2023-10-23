package controlers.coordinateur_cont;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Groupe;
import entities.Professeur;
import tools.DBInteraction;


@WebServlet("/affecter_encadrant")
public class affecter_encadrant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public affecter_encadrant() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DBInteraction.connect();
		
		List<Integer>  listpro= new ArrayList<Integer>();
		String sql1="select * from professeur";
		ResultSet rs1 = DBInteraction.select(sql1);
		try {
			while(rs1.next()) {
				listpro.add(rs1.getInt(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(int a:listpro) {
		List<Groupe> ds = new ArrayList<Groupe>();
		String sql="select * from groupe where encadrant_id is null";
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
		int i=1;
		for(Groupe j:ds) {
			i++;
			String sql2="update groupe set encadrant_id="+a+" where id="+j.getId();
			int rs2 = DBInteraction.Maj(sql2);
			if(i>2)break;
		}
		
		
		}
		
		DBInteraction.disconnect();
		response.sendRedirect("cordinnateur/index.jsp");

		
	}
	/*
	public int nbrgrp_parprof() {
		int v1=0,v2=0;
		DBInteraction.connect();
		String sql="select count(*) from groupe";
		ResultSet rs= DBInteraction.select(sql);
		try {
			if(rs.next())
			v1=rs.getInt(1);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String sql2="select count(*) from professeur";
		ResultSet rs2= DBInteraction.select(sql);
		try {
			if(rs2.next())
			v2=rs2.getInt(1);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return v1/v2;
	}
	
	public void affecte() {
		DBInteraction.connect();
		String sql="select * from groupe";
		ResultSet rs= DBInteraction.select(sql);
		try {
			while(rs.next()) {
				String sql2="UPDATE groupe SET encadrant_id=1 where id"+rs.getInt(1);
				int nb= DBInteraction.Maj(sql);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();		
	}
	*/
	
	
	
	
}

