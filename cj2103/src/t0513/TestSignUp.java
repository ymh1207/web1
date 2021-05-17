package t0513;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signUp")
public class TestSignUp extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String mid = request.getParameter("mid");
		String pwd = request.getParameter("pwd2");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String date = request.getParameter("date1");
		
		System.out.println("mid : "+mid);
		System.out.println("pwd : "+pwd);
		System.out.println("name : "+name);
		System.out.println("gender : "+gender);
		System.out.println("date : "+date);
	}
}
