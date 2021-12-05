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
  
    public UpdateEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int empid = Integer.parseInt(request.getParameter("eid"));
			String email = request.getParameter("eemail");
			double sal = Double.parseDouble(request.getParameter("esal"));
			HttpSession session = request.getSession();
			Register r = (Register) session.getAttribute("User");
			EmployeeDao edao=new EmployeeDao();
			boolean b=edao.Update(email, sal, empid, r.getId());
			if(b)
			{
				session.setAttribute("update-success", true);
				response.sendRedirect("Dashboard.jsp");
			}
			else
			{
				session.setAttribute("update-success", false);
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
