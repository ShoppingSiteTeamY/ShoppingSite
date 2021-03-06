package jp.co.aforce.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.DAO.CartDAO;
import jp.co.aforce.bean.CartBean;
import jp.co.aforce.bean.LoginBean;
import jp.co.aforce.tool.Page;

@WebServlet(urlPatterns = { "/src/cartDelete" })
public class CartDelete extends HttpServlet {

	public void doPost(

			HttpServletRequest request, HttpServletResponse response

	) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		Page.header(out);

		try {
			
			HttpSession session = request.getSession();
			
			LoginBean loginBean=(LoginBean)session.getAttribute("loginBean");

			String itemNo = request.getParameter("itemNo");
			String item_size = request.getParameter("item_size");
			int item_quantity = Integer.parseInt(request.getParameter("item_quantity"));
		
			CartDAO dao = new CartDAO();
			
			CartBean cart = dao.search(itemNo);
			cart.setItem_size(item_size);
			cart.setItem_quantity(item_quantity);
			
			int line = dao.cartDelete(cart, loginBean.getMember_no(),loginBean.getName());
			
			if (line > 0) {

//				out.println("カートへの削除に成功しました。");
				List<CartBean> cartBean = dao.cartSearch(loginBean.getMember_no());
				session.setAttribute("cartBean", cartBean);
				request.getRequestDispatcher("../views/cart.jsp").forward(request, response);

			}

		} catch (Exception e) {

			//データのエラー調整用
			e.printStackTrace(out);
//			out.println("カートへの追加に失敗しました。");

		}
		Page.footer(out);

	}

}