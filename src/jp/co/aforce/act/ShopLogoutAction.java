package jp.co.aforce.act;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.tool.Action;

public class ShopLogoutAction extends Action {

	public String execute(

			HttpServletRequest request, HttpServletResponse response

	) throws Exception {

		HttpSession session = request.getSession();
		

		session.removeAttribute("loginBean");
		
		return "../views/logout.jsp";

		

	}

}


//if (session.getAttribute("loginBean") != null) {
//
//	session.removeAttribute("loginBean");
//	
//	return "../views/login.jsp";
//
//}
//
//return "../views/logout-error.jsp";