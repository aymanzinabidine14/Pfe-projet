package controlers.coordinateur_cont;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.DBInteraction;


@WebServlet("/AjouterDelai")
public class AjouterDelai extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AjouterDelai() {
        super();
        // TODO Auto-generated constructor stub
    }
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mydate=request.getParameter("date1");
		DBInteraction.connect();
		String sql="insert into delai values('"+mydate+"')";
		int nb= DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		response.sendRedirect("cordinnateur/delai.jsp");
}
}