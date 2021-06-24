package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import jp.co.aforce.bean.OrderBean;

public class OrderDAO extends DAO {
	public int orderInsert(OrderBean orderBean) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"insert into purchase values(?, ?, ?)");
		st.setString(1, orderBean.getOrder_no());
		st.setString(2, orderBean.getPayment());
		st.setString(3, orderBean.getDelivery());
		
		int line = st.executeUpdate();

		st.close();
		con.close();
		return line;
	}
}
