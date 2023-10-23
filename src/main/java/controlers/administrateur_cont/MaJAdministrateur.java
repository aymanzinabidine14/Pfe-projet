package controlers.administrateur_cont;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdministrateurDao;

/**
 * Servlet implementation class MaJCoordinateur
 */
@WebServlet("/MaJAdministrateur")
public class MaJAdministrateur extends HttpServlet {
	AdministrateurDao adao = new AdministrateurDao();
    public MaJAdministrateur() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		//String nom = request.getParameter("nom");
		//String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String mdp = request.getParameter("mdp");
		String cmdp = request.getParameter("cmdp");
		String op = request.getParameter("add");
		if(op.equals("modifier")) {
			if(mdp.equals(cmdp)) {
				adao.modifieradministrateur(id,email,mdp);
				//RequestDispatcher rd = request.getRequestDispatcher("dec");
				//rd.forward(request, response);
				response.sendRedirect("dec");
			}
			else {
				request.getSession().setAttribute("msg","Les mot de passe ne sont pas conforme");
			response.sendRedirect("administrateur/profil.jsp");
			}
		}
	}
}
