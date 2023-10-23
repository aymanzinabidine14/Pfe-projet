package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DepartementDao;


@WebServlet("/AjouterDepartement")
public class AjouterDepartement extends HttpServlet {
	DepartementDao ddao = new DepartementDao();;
   
    public AjouterDepartement() {
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nom = request.getParameter("nom");
		String op = request.getParameter("add");
		if(op.equals("ajouter"))
			ddao.ajouterdepartement(id, nom);
		if(op.equals("modifier"))
			ddao.modifierdepartement(id, nom);
		response.sendRedirect("administrateur/departement.jsp");
	}

}