package project;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class ConnectionProvider {
	static Connection con;
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingsystem?useSSL=false", "root", "");
			//JOptionPane.showMessageDialog(null,"Connection estd");
			return con;
		}
		catch (Exception e) {
			JOptionPane.showMessageDialog(null,e);
		}
		return con;
	}
}
