package userController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLogoutController
 */
@WebServlet("/UserLogoutController.do")
public class UserLogoutController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPro(request, response);
	}
	protected void doPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("로그아웃 들어왔따");
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('로그아웃 되었습니다')");
		out.println("location.href='home.jsp'");
		out.println("</script>");
		out.close();
		return;
		
	}	

}
