package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardListService;
import board.service.IBoardService;
import board.service.BoardWriteService;

@WebServlet("*.board")
public class boardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public boardController() {
        super();
        
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doRequest(request, response);
	}
	
	private void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IBoardService service = null;
		String view = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		if(com.equals("/board/list.board")) {
			service = new BoardListService();
			service.executeService(request, response);
			view = "/board/board_list.jsp";
			
		}else if(com.equals("/board/write_view.board")) {
			view = "/board/write_view.jsp";
		
		}else if(com.equals("/board/write.board")) {
			service = new BoardWriteService();
			service.executeService(request, response);
			view = "/board/list.board";
			
		}else if(com.equals("/board/content_view.board")) {
			service = new BoardContentService();
			service.executeService(request, response);
			view = "/board/content_view.jsp";
		}
		
	    RequestDispatcher dp = request.getRequestDispatcher(view);
		dp.forward(request, response);
				
		
	}

}
