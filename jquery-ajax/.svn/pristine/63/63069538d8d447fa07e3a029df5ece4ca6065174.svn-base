package com.servlet;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="JQ_FormServlet2" , urlPatterns = {"/servlet/JQ_FormServlet2"})
public class JQ_FormServlet2 extends HttpServlet {

	private static final long serialVersionUID = -7584818100379597040L;

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Map map = request.getParameterMap();
		
		Set<String> keys = map.keySet();
		
		for (String string : keys) {
			System.out.println(string + " : " +((String[])map.get(string))[0]);
		}
		
	}

}
