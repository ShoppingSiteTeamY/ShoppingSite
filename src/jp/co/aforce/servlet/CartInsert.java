//package jp.co.aforce.servlet;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import jp.co.aforce.DAO.CartDAO;
//import jp.co.aforce.bean.CartBean;
//import jp.co.aforce.tool.Page;
//
//@WebServlet(urlPatterns = { "/src/cartInsert" })
//public class CartInsert extends HttpServlet {
//
//	public void doPost(
//
//			HttpServletRequest request, HttpServletResponse response
//
//	) throws ServletException, IOException {
//
//		PrintWriter out = response.getWriter();
//
//		Page.header(out);
//
//		try {
//
//			int cart_no = Integer.parseInt(request.getParameter("CartNo"));
//			String item_no = request.getParameter("itemNo");
//			String item_name = request.getParameter("itemName");
//			String item_size = request.getParameter("itemSize");
//			String color = request.getParameter("itemColor");
//			String image = request.getParameter("itemImage");
//			int price = Integer.parseInt(request.getParameter("itemPrice"));
//			
//			CartBean c=new CartBean();
//			
//			c.setCart_no(cart_no);
//			c.setItem_no(item_no);
//			c.setItem_name(item_name);
//			c.setItem_size(item_size);
//			c.setColor(color);
//			c.setPrice(price);
//			c.setImage(image);
//			
//
//			CartDAO dao = new CartDAO();
//			int line = dao.insert(c);
//
//			if (line > 0) {
//
//				out.println("カートへの追加に成功しました。");
//
//			}
//
//		} catch (Exception e) {
//
//			//データのエラー調整用
//			//e.printStackTrace(out);
//			out.println("カートへの追加に失敗しました。");
//
//		}
//		Page.footer(out);
//
//	}
//
//}