package board.service;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.*;
import board.service.*;

import java.sql.Timestamp;
import java.util.*;
public class BoardListService implements IBoardService{

	@Override
	public void executeService(HttpServletRequest request, HttpServletResponse response) {
		
		//DB로부터 게시판 관련 자료를 가져오면 된다. -> get
			// 저장된 자료를 가져올 때는 vo를 사용하여 어떤 column에 어떤 value값에 넣어야 할지 정함.
		boardDAO dao = boardDAO.getInstance(); //이걸 써야 하나의 인스턴스를 가지고 사용됨. 즉 수정 및 삭제되는 모든 DB가 이 인스턴스를 통해서 이뤄짐 
		ArrayList<boardVO> listService_list = dao.getList();
		request.setAttribute("listService_VOlist", listService_list);
		  //listService_VOlist 를 통해서 DB에서 가져오는 모든 정보를 옮긴다.
	}     // setAttribute("변수 명", 변수 값); 
	      //  여기서 만들어진 listService_list는 board_list.jsp 파일에서 쓰임.
	
}
