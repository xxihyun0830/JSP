package DB;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.UserVO;
import Model.UserDAO;

/**
 * Servlet implementation class DB_02
 */
@WebServlet("/DB_02")
public class DB_02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    
    public DB_02() {
        super();
        // TODO Auto-generated constructor stub
    }
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("Name");
		String id = request.getParameter("Id");
		String pw = request.getParameter("Pw");
		String gender = request.getParameter("Gender");
		
		UserVO vo = new UserVO(name, id,pw,gender);
		UserDAO dao = new UserDAO();
		int i = dao.join(vo);
		
		if(i == 1) {
			response.sendRedirect("DB_03.jsp");
		}else {
			response.sendRedirect("DB_01.jsp");
		}
	}

}
