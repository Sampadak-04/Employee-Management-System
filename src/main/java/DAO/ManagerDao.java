package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Register;

public class ManagerDao {
	Connection con = null;
	PreparedStatement ps = null;
	public boolean register(Register r)
	{
		boolean b = false;
		con = MyConnection.getconnection();
		try {
			ps = con.prepareStatement("insert into manager values(?,?,?,?,?,?)");
			ps.setInt(1, r.getId());
			ps.setString(2, r.getName());
			ps.setString(3, r.getEmail());
			ps.setString(4, r.getPhoneNo());
			ps.setString(5, r.getOrgName());
			ps.setString(6, r.getPassword());
			int i = ps.executeUpdate();
			if(i>0)
				b = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	public Register validatUser(String email, String password)
	{
		Register r = null;
		con = MyConnection.getconnection();
		try {
			ps = con.prepareStatement("select * from manager where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				r = new Register(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
			}		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}
}
