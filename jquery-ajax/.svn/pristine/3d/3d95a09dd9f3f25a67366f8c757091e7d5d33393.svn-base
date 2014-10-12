package com.dao;

import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import com.dbutil.DaoSupport;
import com.model.Message;

public class MessageDao extends DaoSupport{
	
	public int saveMessage(Message message) {
		String sql = "insert into message( img , content , time ) values ( ? , ? , ? )";
		Object[] params = { message.getImg() , message.getContent() , message.getTime() };
		int affectRows = execOther(sql , params);
		System.out.println(affectRows+" 条记录被录入了 .  ");
		return affectRows;
	}
	
	public String getMessageJson() {
		String sql = "select * from message";
		List<Message> msg = executeQuery(sql, Message.class , null);
		return JSONArray.fromObject(msg).toString();
	}
	
	

}
