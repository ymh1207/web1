package t0514;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/0514/T3")
public class Test3 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html;charset=utf-8");
//		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name")==null?"":request.getParameter("name");
		out.println("name : "+name+"<br/>");
		out.println("전송방식 : "+request.getMethod()+"<br/>");
		out.println("URL : "+request.getRequestURL()+"<br/>");
		out.println("사용자 IP : "+request.getRemoteAddr()+"<br/>");
		out.println("서버이름 : "+request.getServerName()+"<br/>");
		out.println("서버포트 : "+request.getServerPort()+"<br/>");
		out.println("요청파라미터길이 : "+request.getContentLength()+"<br/>");
		out.println("ContextPath : "+request.getContextPath()+"<br/>");
		out.println("현재사용중인 프로토콜 : "+request.getProtocol()+"<br/>");
		out.println("<a href='/cj2103/0514/test3.jsp'>돌아가기</a>");
	}
}
