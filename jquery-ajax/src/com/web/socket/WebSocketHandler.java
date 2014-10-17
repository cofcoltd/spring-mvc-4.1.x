package com.web.socket;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;


@ServerEndpoint(value="/websocket")
public class WebSocketHandler {
	

	
	

	@OnMessage
	public void onMessage(String message , Session session ) throws Exception {
		System.out.println("Server Socket received message : " + message);
		
		session.getBasicRemote().sendText("this is first server message .<br>");
		
		
		for (int i = 1; i < 4; i++) {
			Thread.sleep(2000);
			
			session.getBasicRemote().sendText(" more mssage from server , count : "+ i +"<br>");
		}
		
		session.getBasicRemote().sendText("last message , thanks a lot , bye! "+"<br>");
	}
	
	@OnOpen
	public void onOpen() {
		System.out.println("server has accept client webSocket . ");
	}
	
	@OnClose
	public void onClose() {
		System.err.println("servlet closed.  ");
	}
	

}
