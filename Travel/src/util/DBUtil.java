package util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.Properties;


public class DBUtil {

	// 得到配置文件对象
		private static Properties properties = new Properties();
		
		static {
			try {
				// 得到db.properties的输入流对象
				InputStream inputStream = DBUtil.class.getClassLoader().getResourceAsStream("db.properties");
				// 通过properties的load()方法，加载配置文件的输入流
				properties.load(inputStream);
			} catch (Exception e) {
				// 打印异常
				e.printStackTrace();
			}
		}
		
		/**
		 * 得到数据库连接
		 * 	1、加载驱动
		 * 	2、通过地址、账号、密码得到数据库连接
		 * @return
		 */
		public static Connection getConnection() {
			Connection connection = null;
			
			// 从配置对象中获取参数   getProperty()
			String jdbcName = properties.getProperty("jdbcName");
			String dbUrl = properties.getProperty("dbUrl");
			String dbName = properties.getProperty("dbName");
			String dbPwd = properties.getProperty("dbPwd");
			
			try {
				//	1、加载驱动
				Class.forName(jdbcName);
				// 2、通过地址、账号、密码得到数据库连接
				connection = DriverManager.getConnection(dbUrl, dbName, dbPwd);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return connection;
		}
		
		/**
		 * 关闭资源
		 * @param connection
		 * @param preparedStatement
		 * @param resultSet
		 */
		public static void close(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet) {
			// 关闭资源
			try {
				// 先判断不为空，再关闭
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		public static void close(Connection connection, PreparedStatement preparedStatement){
			close(connection,preparedStatement,null);
		}
		
		
		public static void main(String[] args) {
			System.out.println(getConnection());
		}
}