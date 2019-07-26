package joinmembers.model;

import java.sql.*;
import util.ConnProvider;
import util.JdbcUtil;

public class memberDAO {
	
	private static memberDAO instance = new memberDAO();
	private memberDAO() {}
	public static memberDAO getInstance() {
		return instance;
	}// 여기까지 DAO의 싱글톤 패턴을 설정해준 코드 
	
	public static final int MEMBER_EXISTANCE = 1;
	public static final int MEMBER_NONEXISTANCE = 0;
	public static final int JOIN_SUCCESS = 1;
	public static final int JOIN_FAIL = 0;
	public static final int LOGIN_SUCCESS = 1;
	public static final int LOGIN_FAIL_PW = 0;
	public static final int LOGIN_FAIL_ID = -1;
	/*
	 * public int insertMember(memberVO vo) { int regNum = 0; Connection conn =
	 * null; PreparedStatement pstmt = null; ResultSet rs = null;
	 * 
	 * try {
	 * 
	 * String url = "jdbc:mysql://localhost:3306/practice"; String uid = "root";
	 * String upw = "qazsokmj12"; String sql =
	 * "insert into members (id, pw, name, email) values (?,?,?,?)";
	 * 
	 * Class.forName("com.mysql.jdbc.Driver");
	 * 
	 * conn = DriverManager.getConnection(url, uid, upw); pstmt =
	 * conn.prepareStatement(sql);
	 * 
	 * pstmt.setString(1, vo.getId()); pstmt.setString(2, vo.getPw());
	 * pstmt.setString(3, vo.getName()); pstmt.setString(4, vo.getEmail());
	 * 
	 * int i = pstmt.executeUpdate();
	 * 
	 * if(i==1) { regNum = memberDAO.JOIN_SUCCESS;
	 * 
	 * }else { regNum = memberDAO.JOIN_FAIL; }
	 * 
	 * 
	 * 
	 * }catch(Exception e) { e.printStackTrace(); }finally { try { if (conn != null)
	 * conn.close(); if (pstmt != null) pstmt.close(); if(rs != null) rs.close(); }
	 * catch (Exception e2) { e2.printStackTrace(); } } return regNum; }
	 */

	public int insertMember(memberVO vo) {
		int regNum = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into members (id, pw, name, email,rDate) values (?,?,?,?,?)";
		
		try {
			
			conn = ConnProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
			 //MySQL에 member조회 시, 해당 아이디가 생성된 시간 뜸.
			
			int i = pstmt.executeUpdate();
			
			if(i==1) {
				regNum = memberDAO.JOIN_SUCCESS;

			}else {
				regNum = memberDAO.JOIN_FAIL;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			
		}
		return regNum;
	}
	public int confirmId(String id) {
		int regNum = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id from members where id = ?";
		
		try{
			conn = ConnProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				regNum = memberDAO.MEMBER_EXISTANCE;
		
			}else {
				regNum = memberDAO.MEMBER_NONEXISTANCE;
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return regNum;
		
		
	}
	
	public int confirmLogin(String id, String pw) {
		int regNum = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select pw from members where id = ?";
	      
	      try {
	         conn = ConnProvider.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1, id);
	         rs = pstmt.executeQuery();
	         
	         if(rs.next()) {
	            if(rs.getString(1).equals(pw)) {
	               regNum = memberDAO.LOGIN_SUCCESS;
	            } else {
	               regNum = memberDAO.LOGIN_FAIL_PW;
	            }
	         } else {
	            regNum = memberDAO.LOGIN_FAIL_ID;
	         }
	      }catch(Exception e) {
				e.printStackTrace();
		  }finally {
				JdbcUtil.close(conn);
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);
		  }
		  return regNum;
		
	}
	
	
	

}
