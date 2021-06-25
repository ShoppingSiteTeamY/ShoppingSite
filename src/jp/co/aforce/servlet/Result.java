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

@WebServlet(urlPatterns = { "/src/result" })
public class Result extends HttpServlet {

	public void doPost(

			HttpServletRequest request, HttpServletResponse response

	) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		Page.header(out);

		try {
			
			HttpSession session = request.getSession();
			
			LoginBean loginBean=(LoginBean)session.getAttribute("loginBean");
		
			CartDAO dao = new CartDAO();
			
			List<CartBean> cartBean = dao.cartSearch(loginBean.getMember_no());
			session.setAttribute("cartBean", cartBean);
			request.getRequestDispatcher("../views/result.jsp").forward(request, response);

			

		} catch (Exception e) {

			//データのエラー調整用
			e.printStackTrace(out);

		}
		Page.footer(out);

	}

}