package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EtudiantDao;

@WebServlet("/SupprimerEtudiant")
public class SupprimerEtudiant extends HttpServlet {
	EtudiantDao edao = new EtudiantDao();
    public SupprimerEtudiant() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int id = Integer.parseInt(request.getParameter("id"));
		edao.supprimeretudiant(id);
		response.sendRedirect("administrateur/etudiant.jsp");
    }
}