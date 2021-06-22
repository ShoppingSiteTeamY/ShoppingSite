package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.bean.LoginBean;

public class LoginDAO extends DAO{
	
	public LoginBean search(String member_no,String password)
	
	throws Exception{
		
		
		LoginBean loginBean=null;
		Connection con = getConnection();
		PreparedStatement st;
		
		st=con.prepareStatement(
				
				
				"select * from members where member_no=? and password=?");
		
		st.setString(1, member_no);
		st.setString(2, password);
		ResultSet rs=st.executeQuery();
		
		if(rs.next()) {
			
			loginBean=new LoginBean();
			loginBean.setMember_no(rs.getString("member_no"));
			loginBean.setName(rs.getString("name"));
			loginBean.setAge(rs.getInt("age"));
			loginBean.setPassword(rs.getString("password"));
			
		}else {
			
			return null;	
			
		}
		
		st.close();
		con.close();
		return loginBean;
	}
		
		
		
		
}


