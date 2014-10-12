package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.AsyncContext;
import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.servlet.support.AsyncFileProcess;

@WebServlet(name = "asyncServlet", urlPatterns = { "/servlet/asyncServlet" }, asyncSupported = true)
@MultipartConfig(location = "c:/", maxFileSize = 1024 * 1024 * 1000)
public class AsyncXHR2Servlet extends HttpServlet {

	private static final long serialVersionUID = 3125155959928366656L;
	private static final MultipartConfig config;
	static {
		config = XHR2Servlet.class.getAnnotation(MultipartConfig.class);
	}

	// private ExecutorService executorService =
	// Executors.newFixedThreadPool(10);
	// executorService.submit(new AsyncFileProcess(async));

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String method = request.getParameter("method");
		if ("processForm".equalsIgnoreCase(method)) {
			processForm(request, response);
		} else if ("checkName".equalsIgnoreCase(method)) {
			checkName(request, response);
		}

	}

	public void processForm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");

		out.print("name : " + name);
		out.flush();

		AsyncContext async = request.startAsync();
		
	
		async.start(new AsyncFileProcess(async));
		
		System.out.println("所有内容接收完毕 : " + new Date());

	}

	public void checkName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}


/**
 * 	async.addListener(new AsyncListener() {
			@Override
			public void onTimeout(AsyncEvent event) throws IOException {
			}

			@Override
			public void onStartAsync(AsyncEvent event) throws IOException {
			}

			@Override
			public void onError(AsyncEvent event) throws IOException {
			}

			@Override
			public void onComplete(AsyncEvent event) throws IOException {
				System.out.println("异步调用结束了");
			}
		});
		*/
