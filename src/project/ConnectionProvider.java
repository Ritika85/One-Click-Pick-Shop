package project;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class ConnectionProvider {
	static Connection con;
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("mysql://hjb1tvndjskjuy89:bk59f0pdi0nymsei@j8oay8teq9xaycnm.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/f974d21wadk3tufh","hjb1tvndjskjuy89","bk59f0pdi0nymsei");
			//JOptionPane.showMessageDialog(null,"Connection estd");
			return con;
		}
		catch (Exception e) {
			JOptionPane.showMessageDialog(null,e);
		}
		return con;
	}
}
