package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProfesseurDao;

@WebServlet("/AjouterProfesseur")
public class AjouterProfesseur extends HttpServlet {
	ProfesseurDao pdao = new ProfesseurDao();
    
	public AjouterProfesseur() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		int grade = Integer.parseInt(request.getParameter("grade"));
		String role = request.getParameter("role");
		String email = request.getParameter("email");
		int fil_id = Integer.parseInt(request.getParameter("fil_id"));
		String op = request.getParameter("add");
		if(op.equals("ajouter"))
			pdao.ajouterprofesseur(id, nom,prenom,grade,role,email,fil_id);
		if(op.equals("modifier"))
			pdao.modifierprofesseur(id, nom,prenom,grade,role,email,fil_id);
		response.sendRedirect("administrateur/professeur.jsp");
	}
}
