package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.bean.CartBean;

public class CartDAO extends DAO {

	public List<CartBean> cartSearch(String member_no) throws Exception {
		//保存先のBeanクラスを指定したListの宣言、
		List<CartBean> list = new ArrayList<>();
		//DBに接続を行う。
		Connection con = getConnection();
		//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
		PreparedStatement st = con.prepareStatement(
				"select * from cart where member_no= ?");
		//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
		st.setString(1, member_no);
		ResultSet rs = st.executeQuery();
		//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
		while (rs.next()) {
			//Beanクラスのインスタンス作成
			CartBean cart = new CartBean();
			//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。					
			cart.setItem_no(rs.getString("item_no"));
			cart.setItem_name(rs.getString("item_name"));
			cart.setColor(rs.getString("color"));
			cart.setPrice(rs.getInt("price"));
			cart.setImage(rs.getString("image"));
			cart.setItem_size(rs.getString("item_size"));
			cart.setItem_quantity(rs.getInt("item_quantity"));
			cart.setMember_no(rs.getString("member_no"));
			cart.setName(rs.getString("name"));
			
			list.add(cart);
		}
		//PreparedStatementの終了
		st.close();
		//DBからの切断
		con.close();
		//listを呼び出し元に戻り値として返す。
		return list;
	}
	
	public CartBean search(String itemNo) throws Exception {
		
		//DBに接続を行う。
		Connection con = getConnection();
		//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
		PreparedStatement st = con.prepareStatement(
				"select * from items where item_no = ?");
		//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
		st.setString(1, itemNo);
		
		ResultSet rs = st.executeQuery();
		
		CartBean cart = new CartBean();
		//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。					
		while(rs.next()) {
		
		cart.setItem_no(rs.getString("item_no"));
		cart.setItem_name(rs.getString("item_name"));
		cart.setColor(rs.getString("color"));
		cart.setPrice(rs.getInt("price"));
		cart.setLocation(rs.getString("location"));
		cart.setImage(rs.getString("image"));
			
		}
		
		//PreparedStatementの終了
		st.close();
		//DBからの切断
		con.close();
		//listを呼び出し元に戻り値として返す。
		return cart;
	}

	//戻り値の方がint lineとなるため、int型のメソッドとして宣言する。Beanを引数にする事で、保存されたデータをデータベースに1行追加する。
	public int cartInsert(CartBean cart,String member_no, String name) throws Exception {
		Connection con = getConnection();
		
		PreparedStatement st = con.prepareStatement(
				"insert into cart values(null,?,?,?,?,?,?,?,?,?,?)");
		
		st.setString(1, cart.getItem_no());
		st.setString(2, cart.getItem_name());
		st.setString(3, cart.getColor());
		st.setInt(4, cart.getPrice());
		st.setString(5, cart.getLocation());
		st.setString(6, cart.getImage());
		st.setString(7, cart.getItem_size());
		st.setInt(8, cart.getItem_quantity());
		st.setString(9, member_no);
		st.setString(10, name);
		//追加のSQL文で追加された1行をInt型のラインとして定義する。これはexcuteUpdateメソッドなので変更した行数を返す仕様となっている。
		int line = st.executeUpdate();
		
		st.close();
		con.close();
		//lineを参照元に戻り値として返す。
		return line;
	}

	public int cartDelete(CartBean cart,String member_no, String name) throws Exception {
		Connection con = getConnection();
		PreparedStatement st = con.prepareStatement(
				"delete from cart where item_no=? and item_name=? and color=? and price=?  and location=? and image=? and item_size=? and item_quantity=? and member_no=? and name=?");
		//delete文の場合は順番に接続が行われる為、そのままの順番で記入を行う。
		st.setString(1, cart.getItem_no());
		st.setString(2, cart.getItem_name());
		st.setString(3, cart.getColor());
		st.setInt(4, cart.getPrice());
		st.setString(5, cart.getLocation());
		st.setString(6, cart.getImage());
		st.setString(7, cart.getItem_size());
		st.setInt(8, cart.getItem_quantity());
		st.setString(9, member_no);
		st.setString(10, name);
		//削除のSQL文で追加された1行をInt型のラインとして定義する。
		int line = st.executeUpdate();
		st.close();
		con.close();
		//lineを参照元に戻り値として返す。
		return line;
	}

	//	public int update(CartBean cart) throws Exception{
	//		
	//		Connection con = getConnection();
	//
	//		PreparedStatement st = con.prepareStatement(
	//
	//				"update cart set member_no=? ,item_no=? where cart_no=? ");
	//		
	//		//更新の場合は最後の部分にwhere句が来る為、?の場所と値の位置に注意する。
	//		st.setString(1, cart.getMember_no());
	//		st.setString(2, cart.getItem_no());
	//		st.setString(3, cart.getCart_no());
	//		
	//		//更新のSQL文で追加された1行をInt型のラインとして定義する。
	//		int line = st.executeUpdate();
	//		
	//		st.close();
	//		con.close();
	//
	//		//lineを参照元に戻り値として返す。
	//			return line;
	//			
	//		}
	//		

}
