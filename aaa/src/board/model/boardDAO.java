package board.model;
import java.sql.*;

import java.sql.*;
import util.ConnProvider;
import util.JdbcUtil;
import java.util.*;
public class boardDAO {
	
	//하나의 인스턴스를 생성하여 그것만 사용하게 하는 것 = singleton pattern
	private static boardDAO instance = new boardDAO();
	public static boardDAO getInstance() {
		if(instance != null) {
			return instance;
		}
		return instance;
	}
	
	//기본 생성자
	private boardDAO() {}
	
	//------------------------------여기까지 DAO 기본 생성--------------------------//
	
	//게시판 전체 목록 
	public ArrayList<boardVO> getList(boardVO vo) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		 // SQL에 INSERT를 실행할 경우, pstmt를 써도 무방
		 // 큰 차이는 없는듯,,,
		ResultSet rs = null;
		ArrayList<boardVO> boardVO_list = new ArrayList<>();
		String sql = "SELECT * FROM boards";
		
		try {
			conn = ConnProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int getList_id = rs.getInt("board_Id");
				String getList_name = rs.getString("board_Name");
				String getList_title = rs.getString("board_Title");
				String getList_content = rs.getString("board_Content");
				Timestamp getList_date = rs.getTimestamp("board_Date");
				int getList_hit = rs.getInt("board__Hit");
				
				boardVO vo_getList = new boardVO(getList_id, getList_name, getList_title, getList_content, getList_date, getList_hit);
				boardVO_list.add(vo_getList);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		return boardVO_list;
		

	}
	
	//게시판 게시글 작성하기
	public void write(String board_Name) {
		
	}
	
	
}
