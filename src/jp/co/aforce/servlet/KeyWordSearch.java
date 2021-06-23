package jp.co.aforce.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.DAO.ItemDAO;
import jp.co.aforce.bean.ItemBean;
import jp.co.aforce.tool.Page;

@WebServlet(urlPatterns = { "/src/keyWord" })
public class KeyWordSearch extends HttpServlet {

	public void doPost(

			HttpServletRequest request, HttpServletResponse response

	) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		Page.header(out);

		try {
			String keyword = request.getParameter("keyword");
			
			ItemDAO dao = new ItemDAO();

			List<ItemBean> itemBean = dao.wordSearch(keyword);

				request.setAttribute("itemBean", itemBean);
				request.getRequestDispatcher("../views/user.jsp").forward(request, response);
			
			

		} catch (Exception e) {

			e.printStackTrace(out);
			out.println("該当する商品情報が見つかりません。");
		}
		Page.footer(out);

	}

}