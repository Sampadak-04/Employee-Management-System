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

import DAO.EmployeeDao;
import model.Employee;
import model.Register;

@WebServlet("/AddEmployeeServlet")
public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddEmployeeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int empId = 0;
		ArrayList<Integer> list = new ArrayList<Integer>();
		for (int i = 1; i < 5000; i++) {
			list.add(new Integer(i));
		}
		Collections.shuffle(list);
		for (int i = 1; i <= 4000; i++) {
			empId = list.get(i);
		}
		String ename = request.getParameter("ename");
		String email = request.getParameter("email");
		double salary = Double.parseDouble(request.getParameter("salary"));
		HttpSession sess = request.getSession();
		Register r = (Register) sess.getAttribute("User");
		int userId = r.getId();
		Employee e = new Employee(empId, ename, email, salary);
		EmployeeDao ed = new EmployeeDao();
		boolean b = ed.register(e, userId);
		if(b)
		{
			response.sendRedirect("Dashboard.jsp");
		}
		else
			response.sendRedirect("AddEmployee.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
