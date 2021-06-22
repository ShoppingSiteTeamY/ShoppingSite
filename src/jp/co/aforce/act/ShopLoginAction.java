package jp.co.aforce.act;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.DAO.LoginDAO;
import jp.co.aforce.bean.LoginBean;
import jp.co.aforce.tool.Action;

public class ShopLoginAction extends Action {

	public String execute(

			HttpServletRequest request, HttpServletResponse response

	) throws Exception {

		HttpSession session = request.getSession();
		
	    try {
		
		String member_no = request.getParameter("member_no");
		String password = request.getParameter("password");
		LoginDAO dao = new LoginDAO();	
		LoginBean loginBean = dao.search(member_no, password);
		
		
		if ((loginBean.getMember_no().equals("AA21061716") && loginBean.getPassword().equals("norito1128")) || 
				(loginBean.getMember_no().equals("AA21061741") && loginBean.getPassword().equals("iamapexman")) ||
				(loginBean.getMember_no().equals("AA21061757") && loginBean.getPassword().equals("prohuntery"))){
			
			session.setAttribute("loginBean", loginBean);
			
			return "../views/menu.jsp";
			
		}else if(loginBean.getMember_no() != null && loginBean.getPassword() != null ) {
			
			session.setAttribute("loginBean", loginBean);
			
			return "../src/UserAllSearch";
			
		} 
		
		return "../views/login-error.jsp";
		
	    }catch(Exception e){
			
	    	return "../views/login-error.jsp";
		
		}
			
//		if(loginBean != null ) {
//			
//			session.setAttribute("loginBean", loginBean);
//			
//			return "../views/user.jsp";
//			
//		}else{
//			
//			return "../views/login-error.jsp";
//			
//		}

	}

}
