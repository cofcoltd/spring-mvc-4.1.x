package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="JQ_FormServlet" , urlPatterns = {"/servlet/JQ_FormServlet"} )
public class JQ_FormServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		
		out.print("username : "+name +" , pwd : "+pwd );
		
		out.flush();
		out.close();
	}

}
