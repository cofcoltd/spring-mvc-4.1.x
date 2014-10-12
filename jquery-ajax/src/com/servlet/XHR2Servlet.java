package com.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.servlet.support.FileSupport;

@WebServlet(name = "XHR2Servlet", urlPatterns = { "/servlet/XHR2Servlet" })
@MultipartConfig(location = "c:/", maxFileSize = 1024 * 1024 * 1000)
public class XHR2Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static final MultipartConfig config;
	static {
		config = XHR2Servlet.class.getAnnotation(MultipartConfig.class);
	}

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String method = request.getParameter("method");

		if ("getMutiFormData".equalsIgnoreCase(method)) {
			getMutiFormData(request, response);
		}

	}

	public void getMutiFormData(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		System.out.println("name : "+ request.getParameter("name"));
		System.out.println("pwd : "+ request.getParameter("pwd"));
		
		Part part = request.getPart("img");
		
		System.out.println("上传文件的类型 : "+part.getContentType());
		part.write(FileSupport.getFileName(part));

		out.flush();
		out.close();
	}

}
