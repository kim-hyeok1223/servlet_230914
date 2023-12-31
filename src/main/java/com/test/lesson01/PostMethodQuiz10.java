package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		PrintWriter out = response.getWriter();
		
		if (userMap.get("id").equals(id) == false) {
			out.print("Id가 일치하지 않음");
		} else if (userMap.get("password").equals(pw) == false) {
			out.print("pw가 일치하지 않음");
		}else {
			out.print(userMap.get("name") + "님 환영합니다.");
		}
		
		
		
	}
	

}
