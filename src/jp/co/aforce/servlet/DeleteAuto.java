package jp.co.aforce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.DAO.ItemDAO;
import jp.co.aforce.bean.ItemBean;
import jp.co.aforce.tool.Page;


@WebServlet(urlPatterns = { "/src/deleteAuto" })
public class DeleteAuto extends HttpServlet {

	public void doPost(

			HttpServletRequest request, HttpServletResponse response

	) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		Page.header(out);
		

		try {
			//入力チェッカー(詳細は省略)
			String item_no = request.getParameter("itemNo");
			String item_name = request.getParameter("itemName");
			String color = request.getParameter("itemColor");
			String location = request.getParameter("itemLocation");
			String image = request.getParameter("itemImage");
			String ranking = request.getParameter("itemRanking");
			
			if (item_no.isEmpty() || item_name.isEmpty() ||  color.isEmpty() || request.getParameter("itemPrice").isEmpty() || location.isEmpty() || image.isEmpty() || ranking.isEmpty()){
				out.println("入力されていない項目があります。");
				return;
			}
			
			int price = Integer.parseInt(request.getParameter("itemPrice"));
			
			ItemBean i=new ItemBean();
			
			i.setItem_no(item_no);
			i.setItem_name(item_name);
			i.setColor(color);
			i.setPrice(price);
			i.setLocation(location);
			i.setImage(image);
			i.setRanking(ranking);
			
			
			ItemDAO dao = new ItemDAO();
			
			int line=dao.delete(i);
			
				if(line>0) {
					
					out.println("削除に成功しました。");
					out.println("<button type=\"button\" class=\"button\" onclick=\"location.href='menu.jsp'\" name=\"back\">戻る</button>");
					
				}else {
		
					out.println("削除に失敗しました。");
				}
			

			} catch (Exception e) {

			//データのエラー調整用
			//e.printStackTrace(out);
			out.println("削除に失敗しました。");

		}
		
		Page.footer(out);
		
	}
	
}
		

	


