package garden.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Application {

	private static final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private static final String DB_USER = "system";
	private static final String DB_PASS = "oracle";

	Connection conn;

	public Application() {
		try{		
			// 1. 클래스 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 데이터베이스에 접속
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
		} catch (Exception e) {
			e.printStackTrace();			
		}
	}
	public Connection getConn() {
		return conn;
	}
}