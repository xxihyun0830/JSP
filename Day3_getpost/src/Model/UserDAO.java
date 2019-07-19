package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class UserDAO {
	
	private DataSource ds; 
	
	public UserDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<UserVO> userSelectAll(){
		
		ArrayList<UserVO> userList = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("select * from admini");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("Name");
				String id = rs.getString("Id");
				String pw = rs.getString("Pw");
				String gender = rs.getString("Gender");
				
				UserVO vo = new UserVO(name,id,pw,gender);
				userList.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) {conn.close(); }
				if(pstmt != null) {pstmt.close();}
				if(rs != null) {rs.close();}
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return userList;
		
		
	}
	
	public int join(UserVO vo){
		int num = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert int admini values (?,?,?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getId());
			pstmt.setString(3, vo.getPw());
			pstmt.setString(4, vo.getGender());
			
			num = pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
			}catch(Exception e3) {
				e3.printStackTrace();
			}
		}
		return num;
		
	}
	
}
