//package jp.co.aforce.DAO;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//
//import jp.co.aforce.bean.CartBean;
//
//public class CartDAO extends DAO{
//	
//	public List<CartBean> search(String cartNo) throws Exception {
//		//保存先のBeanクラスを指定したListの宣言、
//		List<CartBean> list = new ArrayList<>();
//		//DBに接続を行う。
//		Connection con = getConnection();
//		//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
//		PreparedStatement st = con.prepareStatement(
//				"select * from cart where cart_no = ?");
//		//PreparedStatementの(左から何個目の?か,その値・変数名)として定義する。
//		st.setString(1, cartNo);
//		//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
//		ResultSet rs = st.executeQuery();
//		//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
//		while (rs.next()) {
//			//Beanクラスのインスタンス作成
//			CartBean cart = new CartBean();
//			//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。					
//			cart.setCart_no(rs.getInt("cart_no"));
//			cart.setItem_no(rs.getString("item_no"));
//			cart.setItem_name(rs.getString("item_name"));
//			cart.setItem_size(rs.getString("item_size"));
//			cart.setColor(rs.getString("color"));
//			cart.setPrice(rs.getInt("price"));
//			cart.setImage(rs.getString("image"));
//			list.add(cart);
//		}
//		//PreparedStatementの終了
//		st.close();
//		//DBからの切断
//		con.close();
//		//listを呼び出し元に戻り値として返す。
//		return list;
//	}
//	//戻り値の方がint lineとなるため、int型のメソッドとして宣言する。Beanを引数にする事で、保存されたデータをデータベースに1行追加する。
//		public int insertLB() throws Exception {
//			Connection con = getConnection();
//			PreparedStatement st = con.prepareStatement(
//					"insert into cart values(null,'T10L1B','HAWAIIAN PATTERN SHIRT','L','Black',9480,'../views/image/t1a.jpeg')");
//			//MemberBeanから受け取った値をそれぞれString,Intに変換している。
////			st.setString(1, cart.getItem_no());
////			st.setString(2, cart.getItem_name());
////			st.setString(3, cart.getItem_size());
////			st.setString(4, cart.getColor());
////			st.setInt(5, cart.getPrice());
////			st.setString(6, cart.getImage());
//			//追加のSQL文で追加された1行をInt型のラインとして定義する。これはexcuteUpdateメソッドなので変更した行数を返す仕様となっている。
//			int line = st.executeUpdate();
//			st.close();
//			con.close();
//			//lineを参照元に戻り値として返す。
//			return line;
//		}
//		
//		public int insertT1MB() throws Exception {
//			Connection con = getConnection();
//			PreparedStatement st = con.prepareStatement(
//					"insert into cart values(null,'T10M1B','HAWAIIAN PATTERN SHIRT','M','Black',9480,'../views/image/t1a.jpeg')");
//			int line = st.executeUpdate();
//			st.close();
//			con.close();
//			//lineを参照元に戻り値として返す。
//			return line;
//		}
//		
//		public int insertT1SB() throws Exception {
//			Connection con = getConnection();
//			PreparedStatement st = con.prepareStatement(
//					"insert into cart values(null,'T10S1B','HAWAIIAN PATTERN SHIRT','S','Black',9480,'../views/image/t1a.jpeg')");
//			int line = st.executeUpdate();
//			st.close();
//			con.close();
//			//lineを参照元に戻り値として返す。
//			return line;
//		}
//		
//		public int insertT1LLB() throws Exception {
//			Connection con = getConnection();
//			PreparedStatement st = con.prepareStatement(
//					"insert into cart values(null,'T1LL1B','HAWAIIAN PATTERN SHIRT','LL','Black',9480,'../views/image/t1a.jpeg')");
//			int line = st.executeUpdate();
//			st.close();
//			con.close();
//			//lineを参照元に戻り値として返す。
//			return line;
//		}
//		
//		
//		public int delete(CartBean cart) throws Exception{
//			Connection con = getConnection();
//			PreparedStatement st = con.prepareStatement(
//					"delete from cart where cart_no=? and item_no=? and item_name=? and item_size=? and color=? and price=? and image=?");
//			//delete文の場合は順番に接続が行われる為、そのままの順番で記入を行う。
//			st.setInt(1, cart.getCart_no());
//			st.setString(2, cart.getItem_no());
//			st.setString(3, cart.getItem_name());
//			st.setString(4, cart.getItem_size());
//			st.setString(5, cart.getColor());
//			st.setInt(6, cart.getPrice());
//			st.setString(7, cart.getImage());
//			//削除のSQL文で追加された1行をInt型のラインとして定義する。
//			int line = st.executeUpdate();
//			st.close();
//			con.close();
//			//lineを参照元に戻り値として返す。
//			return line;
//	}
//		
////	public int update(CartBean cart) throws Exception{
////		
////		Connection con = getConnection();
////
////		PreparedStatement st = con.prepareStatement(
////
////				"update cart set member_no=? ,item_no=? where cart_no=? ");
////		
////		//更新の場合は最後の部分にwhere句が来る為、?の場所と値の位置に注意する。
////		st.setString(1, cart.getMember_no());
////		st.setString(2, cart.getItem_no());
////		st.setString(3, cart.getCart_no());
////		
////		//更新のSQL文で追加された1行をInt型のラインとして定義する。
////		int line = st.executeUpdate();
////		
////		st.close();
////		con.close();
////
////		//lineを参照元に戻り値として返す。
////			return line;
////			
////		}
////		
//		
//}
//		
//
//
//	
