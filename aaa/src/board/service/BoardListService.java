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
		String BoardList_id = request.getParameter("getList_id");
		String BoardList_name = request.getParameter("getList_name");
		String BoardList_title = request.getParameter("getList_title");
		String BoardList_date = request.getParameter("getList_date");
		String BoardList_hit = request.getParameter("getList_hit");
		
	}
	
}
