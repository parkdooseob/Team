package Controller;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DAO;
import DB.SelectDTO;


@WebServlet("/detailPageController.do")
public class detailPageController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		int a = Integer.parseInt(request.getParameter("a"));
		RequestDispatcher dis = request.getRequestDispatcher("detail.jsp");
		DAO dao = new DAO();

		//�쟾泥�
		if(a == 1) {
						
			//DB�젒洹쇳빐�꽌 
			//�젣紐�  , ���떎 �떆�옉�떆媛�, 媛�寃�, 李멸퀬�궗�빆 媛��졇�삤湲�
			Vector<SelectDTO> vector =	dao.select(1);
			request.setAttribute("vector", vector);
			
			//洹몃━怨� detail.jsp濡� 肉뚮젮以�
			dis.forward(request, response);
		}
		//카페
		else if(a == 2) {
			
			Vector<SelectDTO> vector =	dao.select(2);
			request.setAttribute("vector", vector);
			
			
						
			dis.forward(request, response);
			
		}
		//강의실
		else if(a == 3) {
			

				
			Vector<SelectDTO> vector =	dao.select(3);
			request.setAttribute("vector", vector);
			
			dis.forward(request, response);
		}
		//룸
		else if (a == 4) {
			
			
			Vector<SelectDTO> vector =	dao.select(4);
			request.setAttribute("vector", vector);
			
			dis.forward(request, response);
		}else {
			System.out.println("�옒紐삳맂 �젒洹�");
		}
		
		
		
	}

}
