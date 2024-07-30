package com.vo;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LinkDAO {
	private Connection conn = null;
	private DataSource dataSource = null;
	private Context context = null;
	public Connection getConn(){
		try{
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/dbconn");
			conn = dataSource.getConnection();
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
}
