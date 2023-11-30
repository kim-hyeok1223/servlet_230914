package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/lesson01/quiz07")
public class GetMethodquiz07 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price")); 
		
		PrintWriter out = response.getWriter();
		
		if (address.startsWith("서울시") == false) {
			out.print("배달불가지역임");
		} else if (card.equals("신한카드")) {
			out.print("결제불가카드임");
		} else {
			out.print(address + "<b>배달준비중</b><br>" + "결제금액 : " + price + "원");
		}
		
		out.print("</body></html>");
	}
}
