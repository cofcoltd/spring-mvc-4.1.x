package com.mvc.web.controller.mvc_17_3_3;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.WebRequest;

@Controller
@RequestMapping("/methodArgumentType")
public class MethodArgumentTypeController {

	@RequestMapping("/")
	public String start() {
		return "17.3.3/methodArgumentType/start";
	}

	@RequestMapping("/reqAndresp")
	public void processRequestOrResponse(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("processRequestOrResponse : "
				+ request.getRequestedSessionId());
	}

	@RequestMapping("/io")
	public void processIO(InputStream in, OutputStream out) throws IOException {
		out.write("spring mvc".getBytes());
	}

	@RequestMapping("/io2")
	public void processIO2(Reader reader, Writer writer) throws IOException {
		writer.write("spring mvc 2");
	}

	@RequestMapping("/webRequest")
	public String webRequest(WebRequest webRequest,
			NativeWebRequest nativeWebRequest) {

		webRequest.setAttribute("msg", "web request and nativeWebRequest",
				RequestAttributes.SCOPE_SESSION);
		
		return start();
	}

	@RequestMapping("/session")
	public void session(HttpSession session) {
		System.out.println(session.getId());
	}

}
