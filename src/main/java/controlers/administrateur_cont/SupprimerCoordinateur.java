package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoordinateurDao;

@WebServlet("/SupprimerCoordinateur")
public class SupprimerCoordinateur extends HttpServlet {
	CoordinateurDao cdao = new CoordinateurDao();

    public SupprimerCoordinateur() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		cdao.supprimercoordinateur(id);
		response.sendRedirect("administrateur/coordinateur.jsp");
	}

}