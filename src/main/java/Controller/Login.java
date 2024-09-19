package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("user_id"); // 폼에서 입력받은 ID
		HttpSession session = request.getSession();
		session.setAttribute("user_id", userId); // 세션에 ID 저장

		response.sendRedirect("Post_Upload.jsp"); // 게시글 작성 페이지로 리다이렉트
	}

}