package controlers.administrateur_cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DepartementDao;
import dao.FilliereDao;

@WebServlet("/SupprimerFilliere")
public class SupprimerFilliere extends HttpServlet {
	FilliereDao fdao = new FilliereDao();

    public SupprimerFilliere() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		fdao.supprimerfilliere(id);
		response.sendRedirect("administrateur/filliere.jsp");
	}
}
