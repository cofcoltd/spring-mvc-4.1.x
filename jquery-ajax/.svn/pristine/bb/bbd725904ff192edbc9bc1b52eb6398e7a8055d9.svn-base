package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "sse", urlPatterns = { "/servlet/sse" })
public class SSEServlet extends HttpServlet {

	private static final long serialVersionUID = 6221249583672404522L;

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
		
		PrintWriter out = response.getWriter();
		
		// 这里必须设置 Content-Type 为 text/event-stream
		response.setHeader("Content-Type", "text/event-stream");
		response.setHeader("Cache-Control", "no-cache");
		response.setCharacterEncoding("utf-8");

		for (int i = 0; i < 2; i++) {
			try {
				Thread.sleep(800);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			String date =  sdf.format(new Date()).toString();
			out.println("date:" +date);
			//data:value
			out.println("data:Server message : "+date+"<br>");
			out.println("data: this is server-sent event multi-line data"+date+"<br><br>");
			out.println();
			out.flush();
		}
	}

}
