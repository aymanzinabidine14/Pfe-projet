package tools;

import static java.lang.Integer.parseInt;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.mail.MessagingException;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DBInteraction {
	static Connection conn;
	static Statement stmt;
	static PreparedStatement prst;
	
	public static void connect() {
		 String DB_URL="jdbc:mysql://localhost:3306/pfe_test";
				
		try {		
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,"root","");
			stmt = conn.createStatement();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void disconnect() {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static int Maj(String sql) {
		int nb = 0;
		try {
			nb = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return nb;
	}
	
	public static int Majs(String fcsv) throws IOException {
		int nb = 0;
		try {
			int batchSize=20;
			BufferedReader lineReader=new BufferedReader(new FileReader(fcsv));
			
			String lineText=null;
            int count=0;

            lineReader.readLine();
            while ((lineText=lineReader.readLine())!=null){
                String[] data=lineText.split(",");

                int    id=parseInt(data[0]);
                String nom=data[1];
                String prenom=data[2];
                String email=data[3];
                int    fil_id=parseInt(data[4]);
                
    			String sql="insert into etudiant values("+id+",'"+nom+"','"+prenom+"','"+email+"','NULL','etudiant','NULL',NULL,0,"+fil_id+")";	
    			try {
					SendMail.envoyeremail(email,"null");
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
           
                stmt.addBatch(sql);
                if(count%batchSize==0){
                    stmt.executeBatch();
                }
            }
            lineReader.close();
            stmt.executeBatch();		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return nb;
	}
	
	public static ResultSet select(String sql) {
		ResultSet rs = null;
		try {
			rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
}
