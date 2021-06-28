package jp.co.aforce.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.DAO.OrderDAO;
import jp.co.aforce.bean.OrderBean;
import jp.co.aforce.tool.Page;

@WebServlet(urlPatterns = { "/src/result2" })
public class Result2 extends HttpServlet {
	public void doPost(

			HttpServletRequest request, HttpServletResponse response

	) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		Page.header(out);

		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();
		SimpleDateFormat format = new SimpleDateFormat("yyMMddhhmmss");
		try {
			
			HttpSession session = request.getSession();
			String order_no = format.format(date);
			String payment = request.getParameter("payment");
			String delivery = request.getParameter("delivery");
			
		
			OrderDAO dao = new OrderDAO();
			OrderBean order = new OrderBean();
			order.setOrder_no("D"+order_no);
			order.setPayment(payment);
			order.setDelivery(delivery);
			
			int line =dao.orderInsert(order);
			
			if(line > 0) {
				session.setAttribute("orderBean", order);
				request.getRequestDispatcher("../views/result2.jsp").forward(request, response);
			}

			
		} catch (

		Exception e) {
			e.printStackTrace(out);
		}
		Page.footer(out);
	}

}