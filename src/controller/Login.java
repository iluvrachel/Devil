package controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Login {

//	String username = request.getParameter("username").trim();
//	String password = request.getParameter("password").trim();
	String username;
	String password;
	boolean flag;	
	public boolean login(String username,String password) {
		this.username = username;
		this.password = password;
		try {
			String resource = "mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder()
					.build(inputStream);
			SqlSession session=sqlSessionFactory.openSession();
			 Map<String,Object> params = new HashMap<>();
			 params.put("username", "admin");
		        params.put("password", "admin");
		        List<User> us = session.selectList("selectUser",params);
	        //List<User> us=session.selectList("selectUser",username,password);
		        if(us == null || us.size() == 0){
		        	 flag = true;
		        }
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
}
