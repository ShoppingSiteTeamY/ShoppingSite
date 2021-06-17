package jp.co.aforce.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.DAO.LoginDAO;
import jp.co.aforce.bean.Customer;
import jp.co.aforce.tool.Action;


public class LoginAction extends Action {

	public String execute(
			HttpServletRequest request, HttpServletResponse response
			) throws Exception {
		
		HttpSession session=request.getSession();
		
		String member_no=request.getParameter("member_no");
		String password=request.getParameter("password");
		
		LoginDAO dao=new LoginDAO();
		Customer customer=dao.search(member_no, password);
		
		if(customer!=null) {
			session.setAttribute("customer", customer);
			return "../jsp/login-out.jsp";
		}
		
		return "../jsp/login-error.jsp";
		
	}

}
