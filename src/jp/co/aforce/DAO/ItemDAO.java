package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.bean.ItemBean;

public class ItemDAO extends DAO{
	
	//st内で挿入する変数を引数として挿入する。throwではなく、throwsにする場合は呼び出し元に例外が投げられる仕様。
	public List<ItemBean> allSearch() throws Exception {

		//保存先のBeanクラスを指定したListの宣言、
		List<ItemBean> list = new ArrayList<>();

		//DBに接続を行う。
		Connection con = getConnection();

		//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
		PreparedStatement st = con.prepareStatement(

				"select * from items");
		
		//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
		ResultSet rs = st.executeQuery();

		//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
		while (rs.next()) {
			
			//Beanクラスのインスタンス作成
			ItemBean item = new ItemBean();
			//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。
			item.setItem_no(rs.getString("item_no"));
			item.setItem_name(rs.getString("item_name"));
			item.setColor(rs.getString("color"));
			item.setPrice(rs.getInt("price"));
			item.setLocation(rs.getString("location"));
			item.setImage(rs.getString("image"));
			item.setRanking(rs.getString("Ranking"));
			
			list.add(item);
		}

		//PreparedStatementの終了
		st.close();
		//DBからの切断
		con.close();

		//listを呼び出し元に戻り値として返す。
		return list;

	}
	
	//st内で挿入する変数を引数として挿入する。throwではなく、throwsにする場合は呼び出し元に例外が投げられる仕様。
		public List<ItemBean> search(String itemNo) throws Exception {

			//保存先のBeanクラスを指定したListの宣言、
			List<ItemBean> list = new ArrayList<>();

			//DBに接続を行う。
			Connection con = getConnection();

			//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
			PreparedStatement st = con.prepareStatement(

					"select * from items where item_no = ?");

			//PreparedStatementの(左から何個目の?か,その値・変数名)として定義する。
			st.setString(1, itemNo);
			
			//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
			ResultSet rs = st.executeQuery();

			//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
			while (rs.next()) {
				
				//Beanクラスのインスタンス作成
				ItemBean item = new ItemBean();
				//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。					
				item.setItem_no(rs.getString("item_no"));
				item.setItem_name(rs.getString("item_name"));
				item.setColor(rs.getString("color"));
				item.setPrice(rs.getInt("price"));
				item.setLocation(rs.getString("location"));
				item.setImage(rs.getString("image"));
				item.setRanking(rs.getString("Ranking"));
				
				list.add(item);
				
				
			}

			//PreparedStatementの終了
			st.close();
			//DBからの切断
			con.close();

			//listを呼び出し元に戻り値として返す。
			return list;

		}
		
	
	//戻り値の方がint lineとなるため、int型のメソッドとして宣言する。Beanを引数にする事で、保存されたデータをデータベースに1行追加する。
	public int insert(ItemBean item) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(

				"insert into items values(?, ?, ?, ?, ?, ?, ?)");
		
		//MemberBeanから受け取った値をそれぞれString,Intに変換している。
		st.setString(1, item.getItem_no());
		st.setString(2, item.getItem_name());
		st.setString(3, item.getColor());
		st.setInt(4, item.getPrice());
		st.setString(5, item.getLocation());
		st.setString(6, item.getImage());
		st.setString(7, item.getRanking());
		
		//追加のSQL文で追加された1行をInt型のラインとして定義する。これはexcuteUpdateメソッドなので変更した行数を返す仕様となっている。
		int line = st.executeUpdate();

		st.close();
		con.close();

		//lineを参照元に戻り値として返す。
		return line;

	}

	public int delete(ItemBean item) throws Exception{
	
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
	
				"delete from items where item_no=? and item_name=? and color=? and price=? and location=? and image=? and ranking=?");
		
		//delete文の場合は順番に接続が行われる為、そのままの順番で記入を行う。
		st.setString(1, item.getItem_no());
		st.setString(2, item.getItem_name());
		st.setString(3, item.getColor());
		st.setInt(4, item.getPrice());
		st.setString(5, item.getLocation());
		st.setString(6, item.getImage());
		st.setString(7, item.getRanking());
		//削除のSQL文で追加された1行をInt型のラインとして定義する。
		int line = st.executeUpdate();
		
		st.close();
		con.close();
	
		//lineを参照元に戻り値として返す。
		return line;
	
}
		
	public int update(ItemBean item) throws Exception{
		
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(

				"update items set item_name=? , color=? , price=? , location=? ,image=? , ranking=? where item_no=? ");
		
		//更新の場合は最後の部分にwhere句が来る為、?の場所と値の位置に注意する。
		st.setString(1, item.getItem_name());
		st.setString(2, item.getColor());
		st.setInt(3, item.getPrice());
		st.setString(4, item.getLocation());
		st.setString(5, item.getImage());
		st.setString(6, item.getRanking());
		st.setString(7, item.getItem_no());

		//更新のSQL文で追加された1行をInt型のラインとして定義する。
		int line = st.executeUpdate();
		
		st.close();
		con.close();

		//lineを参照元に戻り値として返す。
			return line;
			
		}
	
	public List<ItemBean> highPrice() throws Exception {

		//保存先のBeanクラスを指定したListの宣言、
		List<ItemBean> list = new ArrayList<>();

		//DBに接続を行う。
		Connection con = getConnection();

		//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
		PreparedStatement st = con.prepareStatement(

				"select * from items order by price desc");
		
		//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
		ResultSet rs = st.executeQuery();

		//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
		while (rs.next()) {
			
			//Beanクラスのインスタンス作成
			ItemBean item = new ItemBean();
			//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。
			item.setItem_no(rs.getString("item_no"));
			item.setItem_name(rs.getString("item_name"));
			item.setColor(rs.getString("color"));
			item.setPrice(rs.getInt("price"));
			item.setLocation(rs.getString("location"));
			item.setImage(rs.getString("image"));
			item.setRanking(rs.getString("Ranking"));
			
			list.add(item);
		}

		//PreparedStatementの終了
		st.close();
		//DBからの切断
		con.close();

		//listを呼び出し元に戻り値として返す。
		return list;

	}
	
	public List<ItemBean> lowPrice() throws Exception {

		//保存先のBeanクラスを指定したListの宣言、
		List<ItemBean> list = new ArrayList<>();

		//DBに接続を行う。
		Connection con = getConnection();

		//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
		PreparedStatement st = con.prepareStatement(

				"select * from items order by price asc");
		
		//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
		ResultSet rs = st.executeQuery();

		//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
		while (rs.next()) {
			
			//Beanクラスのインスタンス作成
			ItemBean item = new ItemBean();
			//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。
			item.setItem_no(rs.getString("item_no"));
			item.setItem_name(rs.getString("item_name"));
			item.setColor(rs.getString("color"));
			item.setPrice(rs.getInt("price"));
			item.setLocation(rs.getString("location"));
			item.setImage(rs.getString("image"));
			item.setRanking(rs.getString("Ranking"));
			
			list.add(item);
		}

		//PreparedStatementの終了
		st.close();
		//DBからの切断
		con.close();

		//listを呼び出し元に戻り値として返す。
		return list;

	}
	
	public List<ItemBean> ranking() throws Exception {

		//保存先のBeanクラスを指定したListの宣言、
		List<ItemBean> list = new ArrayList<>();

		//DBに接続を行う。
		Connection con = getConnection();

		//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
		PreparedStatement st = con.prepareStatement(

				"select * from items order by ranking asc");
		
		//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
		ResultSet rs = st.executeQuery();

		//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
		while (rs.next()) {
			
			//Beanクラスのインスタンス作成
			ItemBean item = new ItemBean();
			//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。
			item.setItem_no(rs.getString("item_no"));
			item.setItem_name(rs.getString("item_name"));
			item.setColor(rs.getString("color"));
			item.setPrice(rs.getInt("price"));
			item.setLocation(rs.getString("location"));
			item.setImage(rs.getString("image"));
			item.setRanking(rs.getString("Ranking"));
			
			list.add(item);
		}

		//PreparedStatementの終了
		st.close();
		//DBからの切断
		con.close();

		//listを呼び出し元に戻り値として返す。
		return list;

	}
	
	
	public List<ItemBean> wordSearch(String keyword) throws Exception {

		//保存先のBeanクラスを指定したListの宣言、
		List<ItemBean> list = new ArrayList<>();

		//DBに接続を行う。
		Connection con = getConnection();

		//適宜必要なSQL文を引数にセットし、変数stを使いset.Stringを使って？の部分に値を挿入する。
		PreparedStatement st = con.prepareStatement(

				"select * from items where item_name like ?");
		
		//前処理済みの検索系SQLを実行し，実行結果を格納したResultSetオブジェクトを返却する。
		st.setString(1,"%"+keyword+"%");
		
		ResultSet rs = st.executeQuery();
		
		//reで取得した値を、次の空白まで取得をするnext()メソッドを使い、１つずつ取得する。
		while (rs.next()) {
			
			//Beanクラスのインスタンス作成
			ItemBean item = new ItemBean();
			//setに関する値を、上記のResultSetより1つずつ取り出し、取り出した値は文字列となっているのでString,intとしてそれぞれに割りふる。
			item.setItem_no(rs.getString("item_no"));
			item.setItem_name(rs.getString("item_name"));
			item.setColor(rs.getString("color"));
			item.setPrice(rs.getInt("price"));
			item.setLocation(rs.getString("location"));
			item.setImage(rs.getString("image"));
			item.setRanking(rs.getString("Ranking"));
			
			list.add(item);
		}

		//PreparedStatementの終了
		st.close();
		//DBからの切断
		con.close();

		//listを呼び出し元に戻り値として返す。
		return list;

	}
	
	
		
}