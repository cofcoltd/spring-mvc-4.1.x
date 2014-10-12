package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

@WebServlet(name="JQ_SelectServlet" , urlPatterns = {"/servlet/JQ_SelectServlet"})
public class JQ_SelectServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String key = request.getParameter("key");
		JSONArray json = JSONArray.fromObject(getSecond(key));
		out.print(json.toString());
		System.out.println(json.toString());
		out.flush();
		out.close();
	}
	
	public String[] getSecond(String key) {
		
		Map<String , String[]> data = new HashMap<String , String[]>();
		data.put("天津市", new String[]{"和平区","南开区","滨海新区"});
		data.put("北京市", new String[]{"朝阳区","东城区","海淀区"});
		
		return data.get(key);
	}

}
