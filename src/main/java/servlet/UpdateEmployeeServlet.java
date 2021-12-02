package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.EmployeeDao;
import model.Employee;
import model.Register;

/**
 * Servlet implementation class UpdateEmployeeServlet
 */
@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id;
		String email;
		double sal;
		HttpSession session;
		Register r;
		try {
			id = Integer.parseInt(request.getParameter(("id")));
			String ename=request.getParameter("ename");
			email = request.getParameter("eemail");
			sal = Double.parseDouble(request.getParameter("esal"));
			session = request.getSession();
			r = (Register) session.getAttribute("User");
			EmployeeDao edao=new EmployeeDao();
			boolean b=edao.Update(email, sal,r.getId(), id);
			if(b)
			{
			     session=request.getSession();
				response.sendRedirect("Update.jsp");
			}
			else
			{
				 session=request.getSession();
				response.sendRedirect("Update.jsp");
			}
		  } 
		catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
