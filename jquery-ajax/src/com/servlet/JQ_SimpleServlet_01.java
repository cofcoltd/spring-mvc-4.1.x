package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="JQ_SimpleServlet_01" , urlPatterns = {"/servlet/JQ_SimpleServlet_01"})
public class JQ_SimpleServlet_01 extends HttpServlet {

	private static final long serialVersionUID = -3084665448141675427L;

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		if("jquery".equalsIgnoreCase(email)) {
			out.print("<font color='red'>请更换用户名</font>");
		}else {
			out.print("<font color='blue'>可以正常使用</font>");
		}
		
		out.flush();
		out.close();
	}

}
