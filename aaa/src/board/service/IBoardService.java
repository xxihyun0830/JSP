package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IBoardService {
	void executeService(HttpServletRequest request, HttpServletResponse response);	

}
