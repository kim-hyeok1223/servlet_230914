package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class DeleteQuiz02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		// Db 연동
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB 쿼리문 수행
		String deleteQuery = "delete from `bookmark` where `id` = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 해제
		ms.disconnect();
		
		// redirect
		response.sendRedirect("/lesson04/quiz02/quiz02_1.jsp");
	}
}
