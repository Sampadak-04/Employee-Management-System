package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Employee;

public class EmployeeDao {
	Connection con = null;
	PreparedStatement ps = null;
	public boolean register(Employee e, int userId)
	{
		boolean b = false;
		con = MyConnection.getconnection();
		try {
			ps = con.prepareStatement("insert into employee values(?,?,?,?,?)");
			ps.setInt(1, e.getEmpId());
			ps.setString(2, e.geteName());
			ps.setString(3, e.getEmail());
			ps.setDouble(4, e.getSalary());
			ps.setInt(5, userId);
			int i = ps.executeUpdate();
			if(i>0)
				b = true;
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		return b;
	}
	public List<Employee> retrieveAll(int id)
	{
		con = MyConnection.getconnection();
		Employee e = null;
		List<Employee> elst = new LinkedList<Employee>();
		try {
			ps = con.prepareStatement("select * from employee where id = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				 e = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4));
				 elst.add(e);
			}
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		return elst;
	}
	public Employee getDataById(int id)
	{
		Employee emp = null;
		con = MyConnection.getconnection();
		try {
			ps = con.prepareStatement("select * from employee where empid = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
				emp = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4));
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return emp;
	}
	public boolean Update(String email,double salary,int empid,int id)
	{
		boolean b=false;
		int i=0;
		con=MyConnection.getconnection();
		try {
			ps=con.prepareStatement("update employee set Email=?,sal=? where empid=? and id=? ");
			ps.setString(1, email);
			ps.setDouble(2, salary);
			ps.setInt(3,empid);
			ps.setInt(4,id);
			i = ps.executeUpdate();
			if(i>0)
			{
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
}
