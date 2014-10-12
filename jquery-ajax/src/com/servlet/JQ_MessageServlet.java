package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.MessageDao;
import com.model.Message;
import com.web.util.FormUtil;

@WebServlet(name="JQ_MessageServlet" , urlPatterns = {"/servlet/JQ_MessageServlet"})
public class JQ_MessageServlet extends HttpServlet {

	private static final long serialVersionUID = -8015626822430159349L;

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String method = request.getParameter("method");
		System.out.println(method);
		
		if("saveMessage".equalsIgnoreCase(method)) {
			saveMessage(request , response);
		} else if("getMsgJson".equalsIgnoreCase(method)){
			getMsgJson(request , response);
		}
		
	}
	
	public void saveMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		FormUtil util = new FormUtil();
		Message message = (Message)util.getInstanceBySimpleForm(request, Message.class);
		
		MessageDao dao = new MessageDao();
		dao.saveMessage(message);
		
	}
	
	public void getMsgJson(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;");
		PrintWriter out = response.getWriter();
		
		MessageDao dao = new MessageDao();
		String json = dao.getMessageJson();
		System.out.println(json);
		out.println(json);
		
		out.flush();
		out.close();
	}

}
