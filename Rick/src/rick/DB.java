package rick;

import java.awt.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import rick.*;

import javax.swing.JOptionPane;

public class DB {

	String url = "jdbc:mysql://localhost:3306/ricks?autoReconnect=true&useSSL=false";
	String user = "root";
	String pw = "kosaf74757";

	private PreparedStatement pstmt = null;
	private Connection conn = null;
	private ResultSet rs = null;
	private Statement stmt = null;
	private HashMap properties;
	LinkedList list = new LinkedList();

	public DB() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("로드 함!");

		} catch (Exception e) {
			System.out.println("실패함..");
		}
	}

	public int addInstrument(String serialNumber, double price, InstrumentSpec Spec) throws SQLException {
		pstmt = null;
		Connection conn = DriverManager.getConnection(url, user, pw);

		try {

			String sql = "insert into info values(?,?,?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, serialNumber);
			pstmt.setDouble(2, price);
			pstmt.setString(3, (String) Spec.getProperty("instrumentType"));
			pstmt.setString(4, (String) Spec.getProperty("builder"));
			pstmt.setString(5, (String) Spec.getProperty("model"));
			pstmt.setString(6, (String) Spec.getProperty("type"));
			pstmt.setString(7, (String) Spec.getProperty("numString"));
			pstmt.setString(8, (String) Spec.getProperty("topWood"));
			pstmt.setString(9, (String) Spec.getProperty("backWood"));
			pstmt.setString(10, (String) Spec.getProperty("style"));

			// if (pstmt.executeUpdate() >= 1) {
			// isSucceeded = true;
			// }
			pstmt.execute();
			return 1;

		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	public LinkedList getAllInstrument() throws SQLException {

		conn = DriverManager.getConnection(url, user, pw);

		String sql = "select * from info";

		try {
			stmt = conn.createStatement();
			stmt.execute(sql);
			rs = stmt.getResultSet();

			while (rs.next()) {

				String serialNum = rs.getString("serialNumber");
				double price = rs.getDouble("price");

				Map properties = new HashMap();
				properties.put("instrumentType", rs.getString("instrumentType"));
				properties.put("builder", rs.getString("builder"));
				properties.put("model", rs.getString("model"));
				properties.put("type", rs.getString("type"));
				properties.put("backWood", rs.getString("backWood"));
				properties.put("topWood", rs.getString("topWood"));
				properties.put("numStrings", rs.getString("numStrings"));
				properties.put("style", rs.getString("style"));

				list.add(new Instrument(serialNum, price, new InstrumentSpec(properties)));
			}
		} catch (SQLException ex) {
			System.out.println("Exception : " + ex);
		}
		return list;

	}

	public LinkedList getInstrument(String search, String keyword) throws SQLException {
		conn = DriverManager.getConnection(url, user, pw);
		String sql = "select * from info where  " + keyword + "='" + search + "'";

		try {
			stmt = conn.createStatement();
			stmt.execute(sql);
			rs = stmt.getResultSet();

			while (rs.next()) {

				String serialNum = rs.getString("serialNumber");
				double price = rs.getDouble("price");

				Map properties = new HashMap();

				properties.put("instrumentType", rs.getString("instrumentType"));
				properties.put("builder", rs.getString("builder"));
				properties.put("model", rs.getString("model"));
				properties.put("type", rs.getString("type"));
				properties.put("backWood", rs.getString("backWood"));
				properties.put("topWood", rs.getString("topWood"));
				properties.put("numStrings", rs.getString("numStrings"));
				properties.put("style", rs.getString("style"));
				list.add(new Instrument(serialNum, price, new InstrumentSpec(properties)));
			}

		} catch (SQLException ex) {
			System.out.println("Exception : " + ex);
		}
		return list;
	}

	public int delete(String srN) throws SQLException {

		conn = DriverManager.getConnection(url, user, pw);

		String sql = "delete from info where serialNumber='" + srN + "'";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.execute();
			return 1;

		} catch (SQLException ex) {
			System.out.println("Exception : " + ex);
			return -1;
		}

	}

	public HashMap get(String serialNumber) throws SQLException {

		conn = DriverManager.getConnection(url, user, pw);
		HashMap properties = new HashMap();

		String sql = "select * from info where serialNumber='" + serialNumber + "'";

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			// double price = rs.getDouble("price");
			if (rs.next()) {
				properties.put("instrumentType", rs.getString("instrumentType"));
				properties.put("builder", rs.getString("builder"));
				properties.put("model", rs.getString("model"));
				properties.put("type", rs.getString("type"));
				properties.put("backWood", rs.getString("backWood"));
				properties.put("topWood", rs.getString("topWood"));
				properties.put("numStrings", rs.getString("numStrings"));
				properties.put("style", rs.getString("style"));
				properties.put("serialNumber", rs.getString("serialNumber"));
				properties.put("price", rs.getDouble("price"));

			}

		} catch (SQLException ex) {
			System.out.println("Exception : " + ex);
		}
		return properties;

	}

	public int modifyInstrument(HashMap properties) throws SQLException {

		try {

			double price = Double.parseDouble((String) properties.get("price"));
			int numStrings = Integer.parseInt((String) properties.get("numStrings"));

			String sql = "update info set price=?, instrumentType=?, builder=?, model=?, type=?, numStrings=?,"
					+ " topWood=?,backWood=?, style=? where serialNumber=?";

			conn = DriverManager.getConnection(url, user, pw);

			pstmt = conn.prepareStatement(sql);

			pstmt.setDouble(1, price);
			pstmt.setString(2, (String) properties.get("instrumentType"));
			pstmt.setString(3, (String) properties.get("builder"));
			pstmt.setString(4, (String) properties.get("model"));
			pstmt.setString(5, (String) properties.get("type"));
			pstmt.setInt(6, numStrings);
			pstmt.setString(7, (String) properties.get("topWood"));
			pstmt.setString(8, (String) properties.get("backWood"));
			pstmt.setString(9, (String) properties.get("style"));
			pstmt.setString(10, (String) properties.get("serialNumber"));

			// pstmt.executeUpdate();
			pstmt.executeUpdate();
			return 1;

		} catch (SQLException ex) {
			System.out.println("Exception : " + ex);
			return -1;
		}

	}

}
