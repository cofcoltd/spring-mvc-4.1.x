package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmpDao;

@WebServlet(name="JQ_JsonServlet" , urlPatterns = {"/servlet/JQ_JsonServlet"})
public class JQ_JsonServlet extends HttpServlet {

	private static final long serialVersionUID = 3787677950348804088L;

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String method = request.getParameter("method");

		if ("getExcludePropertyJson".equalsIgnoreCase(method)) {
			getExcludePropertyJson(request, response);
		} 

	}

	public void getExcludePropertyJson(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");

		EmpDao dao = new EmpDao();
		String json = dao.getExcludePropertyJson();
		response.getWriter().print(json);

	}

	

}
