package login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
/**
 * Servlet implementation class ex_joinOk
 */
@WebServlet("/ex_joinOk")
public class ex_joinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ex_joinOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doget 호출!!");
		String name = request.getParameter("Name");
		String id = request.getParameter("Id");
		String pw = request.getParameter("Pw");
		String [] hobbies = request.getParameterValues("Hobby");
		String major = request.getParameter("Major");
		String region = request.getParameter("Region");
		
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("이름: " + name + "<br>");
		out.println("아이디: " + id + "<br>");
		out.println("패스워드: "+ pw + "<br>");
		out.println("취미: "+ Arrays.toString(hobbies) + "<br>");
		out.println("전공: " + major + "<br>");
		out.println("지역: "+ region );
		out.println("</body>");
		out.println("</head>");
		out.println("</html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
