package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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

}
