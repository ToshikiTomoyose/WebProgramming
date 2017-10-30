package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import dao.DBManager;
//import model.Employee_bean;
import model.Userbean;

public class UserDao {
	public List<Userbean> findAll() {
        Connection conn = null;
        List<Userbean> uselist = new ArrayList<Userbean>();

        try {
            // データベースへ接続
            conn = DBManager.getConnection();

            // SELECT文を準備
            String sql = "SELECT id, pass FROM User";

             // SELECTを実行し、結果表を取得
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            // 結果表に格納されたレコードの内容を
            // Employeeインスタンスに設定し、ArrayListインスタンスに追加
            while (rs.next()) {
                String id = rs.getString("id");
                String pass = rs.getString("pass");
//                int age = rs.getInt("age");
                Userbean employee = new Userbean(id, pass);
                uselist.add(employee);
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
        return uselist;
    }
}
