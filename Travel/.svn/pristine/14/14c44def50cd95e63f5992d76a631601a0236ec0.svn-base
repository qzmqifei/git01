package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import po.User;
import util.DBUtil;

public class UserDao {
	
	public User findUserByName(String uname) {
		User user = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			// 1、得到数据库连接
			connection = DBUtil.getConnection();
			// 2、准备SQL语句
			String sql = "select * from tb_user where uname = ?";
			// 3、预编译
			preparedStatement = connection.prepareStatement(sql);
			// 4、设置参数，下标从1开始
			preparedStatement.setString(1, uname);
			// 5、执行查询，返回结果集
			resultSet = preparedStatement.executeQuery();
			// 6、判断并分析结果集，得到user对象
			if (resultSet.next()) {
				user = new User();
				user.setHead(resultSet.getString("head"));
				user.setUname(uname);
				user.setUpwd(resultSet.getString("upwd"));
				user.setUserId(resultSet.getInt("userId"));
				user.setNick(resultSet.getString("nick"));
				user.setEmail(resultSet.getString("email"));
				user.setMood(resultSet.getString("mood"));
				user.setPhone(resultSet.getString("phone"));
				user.setSex(resultSet.getString("sex"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 关闭资源
			DBUtil.close(connection, preparedStatement, resultSet);
		}
		return user;
	}

	public static int addUser(String uname, String upwd, String email,String head) {
		// 定义sql语句
				String sql = "insert into tb_user (uname,upwd,email,head) values (?,?,?,?)";
				// 定义参数集合
				List<Object> params = new ArrayList<>();
				params.add(uname);
				params.add(upwd);
				params.add(email);
				params.add(head);
	
				int row = BaseDao.executeUpdate(sql, params);
				return row;
	}

	public static int saveUserMsg(String nick, String sex, String mood, String phone, String email,String uname) {
		// TODO Auto-generated method stub
		String sql="update tb_user set nick=?,sex=?,mood=?,phone=?,email=? where uname=?";
		List<Object> params=new ArrayList<>();
		params.add(nick);
		params.add(sex);
		params.add(mood);
		params.add(phone);
		params.add(email);
		params.add(uname);
		int row=BaseDao.executeUpdate(sql, params);
		return row;
	}

	public static int headFile(String head, String uname) {
		// TODO Auto-generated method stub
		String sql="update tb_user set head=? where uname=?";
		List<Object> params=new ArrayList<>();
		params.add(head);
		params.add(uname);
		int row=BaseDao.executeUpdate(sql, params);
		return row;
	}
}
