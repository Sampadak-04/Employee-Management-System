package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ManagerDao;
import model.Register;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int Id = 0;
		ArrayList<Integer> list = new ArrayList<Integer>();
		for (int i = 1; i < 5000; i++) {
			list.add(new Integer(i));
		}
		Collections.shuffle(list);
		for (int i = 1; i <= 4000; i++) {
			Id = list.get(i);
		}
		
		try {
			String name = request.getParameter("mname");
			String email = request.getParameter("email");
			String phoneno = request.getParameter("phone");
			String orgName = request.getParameter("org");
			String password = request.getParameter("pass");
			Register r = new Register(Id, name, email, phoneno, orgName, password);
			ManagerDao md = new ManagerDao();
			boolean b = md.register(r);
			HttpSession sess = request.getSession();
			sess.setAttribute("registration", b);
			response.sendRedirect("Index.jsp");
			// response.sendRedirect("Index.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
