package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FilliereDao;

@WebServlet("/AjouterFilliere")
public class AjouterFilliere extends HttpServlet {
	FilliereDao fdao = new FilliereDao();
       
    public AjouterFilliere() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nom = request.getParameter("nom");
		int dept_id = Integer.parseInt(request.getParameter("dept_id"));
		String op = request.getParameter("add");
		if(op.equals("ajouter"))
			fdao.ajouterfilliere(id, nom,dept_id);
		if(op.equals("modifier"))
			fdao.modifierfilliere(id, nom);
		response.sendRedirect("administrateur/filliere.jsp");
	}

}
