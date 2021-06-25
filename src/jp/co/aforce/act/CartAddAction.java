//package jp.co.aforce.act;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import jp.co.aforce.bean.CartBean;
//import jp.co.aforce.bean.ItemBean;
//import jp.co.aforce.tool.Action;
//
//public class CartAddAction extends Action {
//
//	@SuppressWarnings("unchecked")
//	public String execute(
//
//			HttpServletRequest request, HttpServletResponse response
//
//	) throws Exception {
//
//		HttpSession session = request.getSession();
//		
//		String item_no = request.getParameter("item_no");
//		
//		List<CartBean> cart=(List<CartBean>)session.getAttribute("cart");
//		if(cart==null) {
//			
//			cart= new ArrayList<CartBean>();
//			session.setAttribute("cart", cart);
//			
//			
//		}
//		
//		for(CartBean i : cart) {
//			
//			if(i.getItemBean().getItem_no()==item_no) {
//				
//				i.setCount(i.getCount()+1);
//				
//				return "cart.jsp";	
//				
//			}
//			
//			
//		}
//		
//		List<ItemBean> list =(List<ItemBean>)session.getAttribute("list");
//		for(ItemBean item:list) {
//			
//			if(item.getItem_no()==item_no) {
//				
//				CartBean c=new CartBean();
//				c.setItemBean(item);
//				c.setCount(1);
//				cart.add(c);
//			}
//			
//			
//			
//		}
//		
//		return "cart.jsp";
//		
//
//	}
//
//}
