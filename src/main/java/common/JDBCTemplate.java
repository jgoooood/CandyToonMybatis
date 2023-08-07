package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCTemplate {
	
	// 싱글톤 패턴 
	private static JDBCTemplate instance;
	private static Connection conn;
	
	public JDBCTemplate() {	}
	
	/*
	 * JDBCTemplate 객체생성 메소드 getInstance() : DBCTemplate객체를 외부에서 계속해서 생성할 수 없도록 하는 메소드
	 * db연결을 하기위해서는 
	 * 1. JDBCTemplate.getInstance() 메소드를 호출하는 방식으로 JDBCTemplate객체를 생성 : 메소드를 통해서만 객체생성을 할 수 있음
	 * 2. 호출한 메소드는 객체 생성이 안됐다면 새로 생성하고 객체 생성이 됐다면 그 객체를 리턴함
	 */
	public static JDBCTemplate getInstance() {
		if(instance == null) {
			instance = new JDBCTemplate();
		}
		return instance;
	}
	
	/*
	 * 연결생성 메소드 createConnection() : JDBCTemplate객체를 생성한 후 외부에서 이 메소드를 통해 db연결생성을 할 수 있음
	 */
	public Connection createConnection() {
		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "CANDYTOON";
		String password = "CANDYTOON";
		try {
			//conn이 null이거나 닫힌상태일 때만 연결을 새로 생성함
			if(conn == null || conn.isClosed()) {
				Class.forName(driverName);
				conn = DriverManager.getConnection(url, user, password);
				conn.setAutoCommit(false); //오토커밋해제
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/*
	 * 연결해제메소드 : close()
	 */
	public void close(Connection conn) {
		if(conn != null) {
			try {
				if(!conn.isClosed()) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	/*
	 * 커밋메소드 : commit()
	 */
	public void commit(Connection conn) {
		if(conn != null) {
			try {
				if(!conn.isClosed()) conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/*
	 *  롤백메소드 : rollback()
	 */
	public void rollback(Connection conn) {
		if(conn != null) {
			try {
				if(conn.isClosed()) conn.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
