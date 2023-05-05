package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;

	public static Connection getConn() {

		try {
			if (DBConnect.conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				DBConnect.conn = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/job_portal_2", "root",
						"admin");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return DBConnect.conn;
	}

}
