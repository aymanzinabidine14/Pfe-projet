package controlers.administrateur_cont;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EtudiantDao;
import tools.SendMail;

/**
 * Servlet implementation class AjouterEtudiant
 */
@WebServlet("/AjouterEtudiant")
public class AjouterEtudiant extends HttpServlet {
	EtudiantDao edao = new EtudiantDao();
    public AjouterEtudiant() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op = request.getParameter("add");
		if(op.equals("ajouter")) {
			int id = Integer.parseInt(request.getParameter("id"));
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String email = request.getParameter("email");
			int fil_id = Integer.parseInt(request.getParameter("fil_id"));
			edao.ajouteretudiant(id, nom,prenom,email,fil_id);
			try {
				SendMail.envoyeremail(email,"null");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		if(op.equals("plsajouter")) {
			String fcsv = (request.getParameter("fcsv"));
			edao.ajouteretudiants(fcsv);
		}
		response.sendRedirect("administrateur/etudiant.jsp");
	}

}
