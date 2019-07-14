package login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

/**
 * Servlet implementation class JoinOk
 */
@WebServlet("/MappingJoinOk")
//@WebServlet("/MappingJoinOk") 이 파일의 주소가 MappinJoinOk하나로 나타내진다. 

public class JoinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("doGet!!");

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String [] hobby = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String region = request.getParameter("region");
		
		
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("Client`s name :" + name +"<br>");
		out.println("Client`s id : " + id + "<br>");
		out.println("Client`s pw : " + pw + "<br>");
		out.println("Client`s info :" + Arrays.toString(hobby) + "<br>" + major + "<br>"+ region);
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("doPost");

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String [] hobby = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String region = request.getParameter("region");
		
		
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("Client`s name :" + name +"<br>");
		out.println("Client`s id : " + id + "<br>");
		out.println("Client`s pw : " + pw + "<br>");
		out.println("Client`s info :" + Arrays.toString(hobby) + "<br>" + major + "<br>"+ region);
		out.println("</body>");
		out.println("</html>");
	}

}
