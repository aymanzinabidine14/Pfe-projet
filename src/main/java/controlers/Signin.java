package controlers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdministrateurDao;
import dao.CoordinateurDao;
import dao.EtudiantDao;
import dao.ProfesseurDao;
import dao.UserDao;
import entities.Administrateur;
import entities.Coordinateur;
import entities.Etudiant;
import entities.Professeur;
import entities.User;

@WebServlet("/Signin")
public class Signin extends HttpServlet {
	UserDao ud;
 
	public void init(ServletConfig config) throws ServletException {
		ud = new UserDao();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String log = request.getParameter("log");
		String pass = request.getParameter("pass");
		User u = ud.authentification(log,pass);
		if(u!=null) {
			switch(u.getRole()) {
			
			case "administrateur":
				Administrateur ad = AdministrateurDao.findUserById(u.getId());
				request.getSession().setAttribute("role","administrateur");
				request.getSession().setAttribute("user",ad);
				/*HttpSession ses_ad= request.getSession(true);
				ses_ad.setAttribute("role","administrateur");
				ses_ad.setAttribute("user", ad);
				response.sendRedirect("index.jsp");*/
				break;
			
			case "coordinateur":
				Coordinateur co = CoordinateurDao.findUserById(u.getId());
				request.getSession().setAttribute("role","coordinateur");
				request.getSession().setAttribute("user",co);
				/*HttpSession ses_co= request.getSession(true);
				ses_co.setAttribute("role","coordinateur");
				ses_co.setAttribute("user", co);
				response.sendRedirect("index.jsp");*/
				break;
				
			case "encadrant":
				Professeur pf_e = ProfesseurDao.findUserById(u.getId());
				request.getSession().setAttribute("role","encadrant");
				request.getSession().setAttribute("user",pf_e);
				/*HttpSession ses_pf_e= request.getSession(true);
				ses_pf_e.setAttribute("role","encadrant");				
				ses_pf_e.setAttribute("user", pf_e);
				response.sendRedirect("index.jsp");*/
				break;
			
			case "jure":
				Professeur pf_j = ProfesseurDao.findUserById(u.getId());
				request.getSession().setAttribute("role","jure");
				request.getSession().setAttribute("user",pf_j);
				/*HttpSession ses_pf_j= request.getSession(true);
				ses_pf_j.setAttribute("role","jure");
				ses_pf_j.setAttribute("user", pf_j);
				response.sendRedirect("index.jsp");*/
				break;
			
			case "etudiant":
				Etudiant e = EtudiantDao.findUserById(u.getId());
				request.getSession().setAttribute("role","etudiant");
				request.getSession().setAttribute("user",e);
				/*HttpSession ses_e= request.getSession(true);
				ses_e.setAttribute("role","etudiant");
				ses_e.setAttribute("user", e);
				response.sendRedirect("index.jsp");*/
				break;
			}
			response.sendRedirect("index.jsp");
			//nrequest.getRequestDispatcher("index.jsp").forward(request, response);
			
		}
		else {
			request.setAttribute("msg", "Login ou password incorrect");
			RequestDispatcher dispatcher = request.getRequestDispatcher("signin.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
