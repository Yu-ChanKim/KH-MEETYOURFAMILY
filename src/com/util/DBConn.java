package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConn {
	
	private static Connection conn=null;
	
	//연결
	public static Connection getConnection(){
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pwd="oracle";
		
		if(conn==null){
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn=DriverManager.getConnection(url,user,pwd);
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		
		return conn;
	}
	
	//연결 끊기
	public static void close(){
		if(conn==null)
			return;
		try {
			if(!conn.isClosed())
				conn.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		conn=null;
	}

}