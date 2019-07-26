package board.model;
import java.sql.*;

import java.sql.*;
import util.ConnProvider;
import util.JdbcUtil;
import java.util.*;
public class boardDAO {
	
	//�ϳ��� �ν��Ͻ��� �����Ͽ� �װ͸� ����ϰ� �ϴ� �� = singleton pattern
	private static boardDAO instance = new boardDAO();
	public static boardDAO getInstance() {
		if(instance != null) {
			return instance;
		}
		return instance;
	}
	
	//�⺻ ������
	private boardDAO() {}
	
	//------------------------------������� DAO �⺻ ����--------------------------//
	
	//�Խ��� ��ü ��� 
	public ArrayList<boardVO> getList(boardVO vo) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		 // SQL�� INSERT�� ������ ���, pstmt�� �ᵵ ����
		 // ū ���̴� ���µ�,,,
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
	
	//�Խ��� �Խñ� �ۼ��ϱ�
	public void write(String board_Name) {
		
	}
	
	
}
