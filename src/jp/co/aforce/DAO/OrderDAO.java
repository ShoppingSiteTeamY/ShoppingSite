package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.bean.OrderBean;

public class OrderDAO extends DAO {
	public List<OrderBean> orderSearch(String order_no) throws Exception {

		List<OrderBean> list = new ArrayList<>();

		Connection con = getConnection();
		
		PreparedStatement st = con.prepareStatement(
				"select * from purchase where order_no= ?");
	
		st.setString(1, order_no);
		ResultSet rs = st.executeQuery();
		
		while (rs.next()) {
	
			OrderBean order = new OrderBean();
			
			order.setOrder_no(rs.getString("order_no"));
			order.setPayment(rs.getString("payment"));
			order.setDelivery(rs.getString("delivery"));
			
			list.add(order);
		}

		st.close();
		con.close();
	
		return list;
	}

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
