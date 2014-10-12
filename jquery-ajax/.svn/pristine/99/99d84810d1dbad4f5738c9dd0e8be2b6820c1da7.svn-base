package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(asyncSupported = true , filterName="encoding" , urlPatterns= {"/*"})
public class EncodingFilter implements Filter{
	
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
	
			req.setCharacterEncoding("utf-8");
			resp.setCharacterEncoding("utf-8");
			chain.doFilter(req, resp);
		
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
