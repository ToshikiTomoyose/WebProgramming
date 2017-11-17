package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Userbean;

public class UserDao {
	public List<Userbean> findAll() {
        Connection conn = null;
        List<Userbean> userlist = new ArrayList<Userbean>();

        try {
            // データベースへ接続
            conn = DBManager.getConnection();

            // SELECT文を準備
            String sql = "SELECT id, login_id, name, birth_date, password, create_date, update_date FROM usermanagement";

             // SELECTを実行し、結果表を取得
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String id = rs.getString("id");
                String login_id = rs.getString("login_id");
                String name = rs.getString("name");
                String birth_date = rs.getString("birth_date");
                String pass = rs.getString("password");
                String create_date = rs.getString("create_date");
                String update_date = rs.getString("update_date");
                Userbean usebean = new Userbean(id, login_id, name, birth_date, pass, create_date, update_date);
                userlist.add(usebean);

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            // データベース切断
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
        return userlist;
    }


	public Userbean findByLoginId(String loginId, String pass) {
		   Connection conn = null;
		   Userbean userbean = new Userbean();

	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            // SELECT文を準備
	            String sql = "SELECT * FROM usermanagement where login_id = ? and password = ?";

        		PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, loginId);
	            pStmt.setString(2, pass);
	            ResultSet rs = pStmt.executeQuery();

	            while (rs.next()) {
	                String login_id = rs.getString("login_id");
	                String password = rs.getString("password");
	                userbean.setLogin_id(login_id);
	                userbean.setPass(password);

	                return userbean;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    return null;
	                }
	            }
	        }
	        return null;
	}


	public Userbean findByUserGuide(String targetid) {
	    Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();

            // SELECT文を準備
            String sql = "SELECT id, login_id, name, birth_date, password, create_date, update_date FROM usermanagement WHERE id = ?";

             // SELECTを実行し、結果表を取得
            PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, targetid);
            ResultSet rs = pStmt.executeQuery();

             // 主キーに紐づくレコードは1件のみなので、rs.next()は1回だけ行う
            if (!rs.next()) {
                return null;
            }
            String id = rs.getString("id");
            String login_id = rs.getString("login_id");
            String name = rs.getString("name");
            String birth_date = rs.getString("birth_date");
            String pass = rs.getString("password");
            String create_date = rs.getString("create_date");
            String update_date = rs.getString("update_date");
            return new Userbean(id, login_id, name, birth_date, pass, create_date, update_date);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {

	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    return null;
	                }
	            }
	        }

	}


	public void Usercreate(String clogid, String cname, String cbirthd, String cpass, String ccdate) {
	        Connection conn = null;
	        Userbean userbean = new Userbean();
	        try {
	            // データベースへ接続
	        	conn = DBManager.getConnection();
	            // INSERT文を準備
	            String sql = "INSERT INTO usermanagement (login_id, name, birth_date, password, create_date, update_date) VALUES ( ?, ?, ?, ?, now(),now())";

	         // SELECTを実行し、結果表を取得
	            PreparedStatement pStmt = conn.prepareStatement(sql);
//	            pStmt.setString(1, cid);
	            pStmt.setString(1, clogid);
	            pStmt.setString(2, cname);
	            pStmt.setString(3, cbirthd);
	            pStmt.setString(4, cpass);
//	            pStmt.setString(5, ccdate);
//	            pStmt.setString(6, cupdate);
	            int rs = pStmt.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {

	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();

	                }
	            }
	        }

	  }
}
