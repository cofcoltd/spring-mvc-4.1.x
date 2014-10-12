package com.dao;

import java.util.Date;
import java.util.List;

import javax.websocket.server.ServerEndpoint;

import net.sf.json.JSONArray;
import net.sf.json.JSONSerializer;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsDateJsonBeanProcessor;

import com.dbutil.DaoSupport;
import com.model.Emp;

public class EmpDao extends DaoSupport{
	
	
	public List<Emp> getEmps() {
		String sql = "select * from emp";
		List<Emp> emps = executeQuery(sql, Emp.class, null);
		return emps;
	}
	
	//List to json
	public String getExcludePropertyJson() {
		List<Emp> emps = getEmps();
		
		//jsonConfig
		JsonConfig config = new JsonConfig();

		config.setExcludes(new String[]{"comm"});  
		config.registerJsonBeanProcessor(Date.class,  new JsDateJsonBeanProcessor()); 

		JSONArray json = (JSONArray) JSONSerializer.toJSON(emps, config);
		System.out.println(json.toString());
		return json.toString();
	}

}
