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
			String item_no = request.getParameter("itemNo");
			String item_name = request.getParameter("itemName");
			String item_size = request.getParameter("itemSize");
			String color = request.getParameter("itemColor");
			
			//入力チェッカー(詳細は省略)
			if (item_no.isEmpty() || item_name.isEmpty() || item_size.isEmpty() || color.isEmpty() || request.getParameter("itemPrice").isEmpty()) {
				out.println("入力されていない項目があります。");
				return;
			}
			
			int price = Integer.parseInt(request.getParameter("itemPrice"));
			
			ItemBean i=new ItemBean();
			
			i.setItem_no(item_no);
			i.setItem_name(item_name);
			i.setItem_size(item_size);
			i.setColor(color);
			i.setPrice(price);
			
			
			
			ItemDAO dao = new ItemDAO();
			
			int line=dao.delete(i);
			
				if(line>0) {
					
					out.println("削除に成功しました。");
					
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
		

	


