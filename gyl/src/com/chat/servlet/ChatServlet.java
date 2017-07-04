package com.chat.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chat.bean.Users;
import com.chat.dao.UserDao;
import com.chat.dao.daoimpl.UserDaoJdbcImpl;
import com.util.GBK;


public class ChatServlet extends HttpServlet {

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String method = request.getParameter("method");
		if (method.equals("login")) {
			login(request, response);
		}else if(method.equals("send")){
			send(request,response);
		}
	}
	public void send(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		String message=request.getParameter("message");
		request.setAttribute("message", GBK.toGBK(message));
		request.getRequestDispatcher("/chat/message.jsp").forward(request, response);
	}

	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDao dao = new UserDaoJdbcImpl();
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Users user = dao.login(new Users(username, password));
			ServletContext application = null;
			if(user != null){
				application = this.getServletContext();
				List<Users> userList = (List<Users>)application.getAttribute("userList");//获取application中的用户列表
				if(userList == null || userList.size() == 0){
					userList = new ArrayList<Users>();
				}
				if(userList.isEmpty()){
					userList.add(user);//向userList中加入当前登录 用户
				}else{
					boolean flag = false;
					for(Users loginUser : userList){
						if(loginUser.getUserId().equals(user.getUserId())){
							flag = true;break;
						}
					}
					if(!flag){
						userList.add(user);
					}
				}
				request.getSession().setAttribute("user", user);
				application.setAttribute("userList", userList);
				response.sendRedirect("chat/main.jsp");
			}else{
				response.setContentType("text/html; charset=gbk");
				PrintWriter out = response.getWriter();
				out.print("");
				out.print("<script>alert('用户名或密码错误，请重新登录!');location.replace('chat/index.jsp');</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
