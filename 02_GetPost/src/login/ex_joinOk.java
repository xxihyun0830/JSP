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
		
		//Get method를 사용할 경우 
		 // URL : http://localhost:8181/02_GetPost/ex_joinOk?Name=123&Id=123&Pw=wer&Hobby=cooking&Hobby=%EC%88%98%EC%98%81%ED%95%98%EA%B8%B0&Major=%EC%BB%B4%ED%93%A8%ED%84%B0%EA%B3%B5%ED%95%99%EA%B3%BC&Region=Busan
		//         -> 모든 정보가 묻어서 나옴!!
		String name = request.getParameter("Name");
		String id = request.getParameter("Id");
		String pw = request.getParameter("Pw");
		String [] hobbies = request.getParameterValues("Hobby");
		String major = request.getParameter("Major");
		String region = request.getParameter("Region");
		
		response.setContentType("text/html; charset=utf-8");
		//이걸 써야 한글이 html상에서 출력되어 나옴!
		
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
		//method = post 라고 할 경우 
		//URL : http://localhost:8181/02_GetPost/ex_joinOk
		// 주소에 정보가 묻어나오지 않음!
		  System.out.println("doPost 호출!! ");
		  
		  request.setCharacterEncoding("utf-8"); //서버에서 한글 처리
		  
		  String name = request.getParameter("Name"); 
		  String id =request.getParameter("Id"); 
		  String pw = request.getParameter("Pw"); 
		  String [] hobbies = request.getParameterValues("Hobby"); 
		  String major =request.getParameter("Major"); 
		  String region =request.getParameter("Region");
		  
		  response.setContentType("text/html; charset=utf-8");
		  PrintWriter out = response.getWriter();
		  
		  out.println("<html>"); 
		  out.println("<head>"); 
		  out.println("</head>");
		  out.println("<body>"); 
		  out.println("이름: " + name + "<br>");
		  out.println("아이디: " + id + "<br>"); 
		  out.println("패스워드: "+ pw + "<br>");
		  out.println("취미: "+ Arrays.toString(hobbies) + "<br>"); 
		  out.println("전공: " +major + "<br>"); 
		  out.println("지역: "+ region ); 
		  out.println("</body>");
		  out.println("</head>"); 
		  out.println("</html>");
		 
	}

}
