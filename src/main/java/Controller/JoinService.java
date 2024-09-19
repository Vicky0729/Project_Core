package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.UserDAO;
import Model.UserDTO;

public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		request.setCharacterEncoding("UTF-8");
		
		// JoinForm에서 받아온 내용
		String userId = request.getParameter("userId");
	    String userEmail = request.getParameter("userEmail");
	    String userName = request.getParameter("userName");
	    String userPw = request.getParameter("userPw");
	    String userProfileImg = request.getParameter("userProfileImg");
	    
	  // 받아온 값들을 콘솔에 출력해 확인
	    System.out.println("User ID: " + userId);
	    System.out.println("User Email: " + userEmail);
	    System.out.println("User Name: " + userName);
	    System.out.println("User Password: " + userPw);
	    System.out.println("Profile Image Path: " + userProfileImg);
	    
	    
	   UserDTO dto = new UserDTO(userId,userEmail,userName,userPw,userProfileImg);
	   UserDAO dao = new UserDAO();
	   
	   int result = dao.join(dto);
	    
	   if(result>0) { 
		   response.sendRedirect("Home.jsp");
	   }else {
		   System.out.println("회원가입실패");
		   response.sendRedirect("JoinForm.jsp");
	   }
	}

}
