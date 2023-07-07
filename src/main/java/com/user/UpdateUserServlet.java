package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
        isTrue = UserDB.updateUser(id, name, email, phoneNumber, address, userName, password);
		
		if(isTrue == true) {
			
			List<User> userDetails = UserDB.getUserDetails(id);
			request.setAttribute("userDetails",userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<User> userDetails = UserDB.getUserDetails(id);
			request.setAttribute("userDetails",userDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("updateUser.jsp");
			dis2.forward(request, response);
		}
		
	}

}
