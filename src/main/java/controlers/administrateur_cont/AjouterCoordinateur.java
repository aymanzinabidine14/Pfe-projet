package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoordinateurDao;

@WebServlet("/AjouterCoordinateur")
public class AjouterCoordinateur extends HttpServlet {
	CoordinateurDao cdao = new CoordinateurDao();
    
	public AjouterCoordinateur() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		int fil_id = Integer.parseInt(request.getParameter("fil_id"));
		String op = request.getParameter("add");
		if(op.equals("ajouter"))
			cdao.ajoutercoordinateur(id,nom,prenom,email,fil_id);
		if(op.equals("modifier"))
			cdao.modifiercoordinateur(id,nom,prenom,email,fil_id);
		response.sendRedirect("administrateur/coordinateur.jsp");	}

}
