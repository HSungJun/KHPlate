package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MembersDAO;
import dto.MembersDTO;


@WebServlet("*.Members")
public class MembersController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf8"); 
		String cmd = request.getRequestURI();

		try {
			
			if(cmd.equals("/join.members")) { //ȸ������

			}else if(cmd.equals("/update.members")) { //ȸ������

				String pw = request.getParameter("pw");
						
				
			}else if(cmd.equals("/memberout.members")) { //ȸ��Ż��

			}else if(cmd.equals("/mypage.members")) { //���������� ���� ���

				String userId = (String)request.getSession().getAttribute("loginID");
				MembersDTO my = MembersDAO.getInstance().selectById(userId);

				request.setAttribute("my",my);
				request.getRequestDispatcher("/mypage/mypage.jsp").forward(request, response);
				
			}else if(cmd.equals("/login.members")) { //�α���

			}else if(cmd.equals("/logout.members")) { //�α׾ƿ�

			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
