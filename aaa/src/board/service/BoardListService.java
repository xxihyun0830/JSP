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
		
		//DB�κ��� �Խ��� ���� �ڷḦ �������� �ȴ�. -> get
			// ����� �ڷḦ ������ ���� vo�� ����Ͽ� � column�� � value���� �־�� ���� ����.
		boardDAO dao = boardDAO.getInstance(); //�̰� ��� �ϳ��� �ν��Ͻ��� ������ ����. �� ���� �� �����Ǵ� ��� DB�� �� �ν��Ͻ��� ���ؼ� �̷��� 
		ArrayList<boardVO> listService_list = dao.getList();
		request.setAttribute("listService_VOlist", listService_list);
		  //listService_VOlist �� ���ؼ� DB���� �������� ��� ������ �ű��.
	}     // setAttribute("���� ��", ���� ��); 
	      //  ���⼭ ������� listService_list�� board_list.jsp ���Ͽ��� ����.
	
}
