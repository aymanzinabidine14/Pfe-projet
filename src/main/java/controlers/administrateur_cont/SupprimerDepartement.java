package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DepartementDao;

/**
 * Servlet implementation class SupprimerDepartement
 */
@WebServlet("/SupprimerDepartement")
public class SupprimerDepartement extends HttpServlet {
	DepartementDao ddao = new DepartementDao();;

    public SupprimerDepartement() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		ddao.supprimerdepartement(id);
		response.sendRedirect("administrateur/departement.jsp");
	}

}
