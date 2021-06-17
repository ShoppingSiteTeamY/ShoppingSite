package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.bean.CartBean;

public class CartDAO extends DAO{
	
	//st内で挿入する変数を引数として挿入する。throwではなく、throwsにする場合は呼び出し元に例外が投げられる仕様。
		public List<CartBean> search(String cartNo) throws Exception {

			//保存先のBeanクラスを指定したListの宣言、
			List<CartBean> list = new ArrayList<>();

			//DBに接続を行う。
			Connection con = getConnection();

			//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
			PreparedStatement st = con.prepareStatement(

					"select * from cart where cart_no = ?");

			//PreparedStatementの(左から何個目の?か,その値・変数名)として定義する。
			st.setString(1, cartNo);
			
			//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
			ResultSet rs = st.executeQuery();

			//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
			while (rs.next()) {
				
				//Beanクラスのインスタンス作成
				CartBean cart = new CartBean();
				//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。					
				cart.setCart_no(rs.getString("cart_no"));
				cart.setMember_no(rs.getString("member_no"));
				cart.setItem_no(rs.getString("item_no"));
			
				list.add(cart);
					
			}

			//PreparedStatementの終了
			st.close();
			//DBからの切断
			con.close();

			//listを呼び出し元に戻り値として返す。
			return list;

		}
		
	
	//戻り値の方がint lineとなるため、int型のメソッドとして宣言する。Beanを引数にする事で、保存されたデータをデータベースに1行追加する。
	public int insert(CartBean cart) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(

				"insert into cart values(?, ?, ?)");
		
		//MemberBeanから受け取った値をそれぞれString,Intに変換している。
		st.setString(1, cart.getCart_no());
		st.setString(2, cart.getMember_no());
		st.setString(3, cart.getItem_no());
		
		//追加のSQL文で追加された1行をInt型のラインとして定義する。これはexcuteUpdateメソッドなので変更した行数を返す仕様となっている。
		int line = st.executeUpdate();

		st.close();
		con.close();

		//lineを参照元に戻り値として返す。
		return line;

	}

	public int delete(CartBean cart) throws Exception{
	
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
	
				"delete from cart where cart_no=? and member_no=? and item_no=?");
		
		//delete文の場合は順番に接続が行われる為、そのままの順番で記入を行う。
		st.setString(1, cart.getCart_no());
		st.setString(2, cart.getMember_no());
		st.setString(3, cart.getItem_no());
		
		//削除のSQL文で追加された1行をInt型のラインとして定義する。
		int line = st.executeUpdate();
		
		st.close();
		con.close();
	
		//lineを参照元に戻り値として返す。
		return line;
	
}
		
	public int update(CartBean cart) throws Exception{
		
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(

				"update cart set member_no=? ,item_no=? where cart_no=? ");
		
		//更新の場合は最後の部分にwhere句が来る為、?の場所と値の位置に注意する。
		st.setString(1, cart.getMember_no());
		st.setString(2, cart.getItem_no());
		st.setString(3, cart.getCart_no());
		
		//更新のSQL文で追加された1行をInt型のラインとして定義する。
		int line = st.executeUpdate();
		
		st.close();
		con.close();

		//lineを参照元に戻り値として返す。
			return line;
			
		}
		
		
}
		


	
