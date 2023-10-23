package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProfesseurDao;

@WebServlet("/SupprimerProfesseur")
public class SupprimerProfesseur extends HttpServlet {
	ProfesseurDao pdao = new ProfesseurDao();
	
    public SupprimerProfesseur() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		pdao.supprimerprofesseur(id);
		response.sendRedirect("administrateur/professeur.jsp");
	}
}