package Dbutil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.Context;
import javax.naming.InitialContext;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DbutilMysql {
	//private static DataSource dataSource=null;
		private static ComboPooledDataSource dataSource=new ComboPooledDataSource();
		static {
			//Properties c3p0=new Properties();
			try{
				
				Context initContext = new InitialContext();
//	          Context envContext = (Context)
//	                           initContext.lookup("java:/comp/env");
//	          dataSource = (DataSource) envContext.lookup("jdbc/demo");
				dataSource.setDriverClass("com.mysql.jdbc.Driver");
				dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/guitar");
				dataSource.setUser("root");
				dataSource.setPassword("123456");
				dataSource.setInitialPoolSize(50);
				dataSource.setMaxPoolSize(100);
				dataSource.setMaxIdleTime(10000);
			
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		public static Connection getConnection(){
			Connection connection=null;
			try {
				connection=dataSource.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return connection;
		}
		public static boolean executeUpdate(String sql,Object[] args){
			Connection conn=null;
			PreparedStatement pst=null;
			int rowsCount=0;
			try{
				conn=dataSource.getConnection();
				pst=conn.prepareStatement(sql);
				if(args!=null&args.length>0){
					for(int i=0;i<args.length;i++){
						pst.setObject(i+1, args[i]);
					}
				}
				rowsCount=pst.executeUpdate();
			}catch(SQLException e){
				e.printStackTrace();
			}
			return rowsCount>0?true:false;
		}
		public static ResultSet executeQuery(String sql,Object[] args){
			Connection conn=null;
			PreparedStatement pst=null;
			ResultSet rs=null;
			try{
				conn=dataSource.getConnection();
				pst=conn.prepareStatement(sql);
				if(args!=null&args.length>0){
					for(int i=0;i<args.length;i++){
						pst.setObject(i+1, args[i]);
					}
				}
				rs=pst.executeQuery();
			}catch(SQLException e){
				e.printStackTrace();
			}
			return rs;
		}
		 public static void closeAll(ResultSet rs,Statement st,Connection conn){
			 try{
				 if(rs!=null) rs.close();
				 if(st!=null) st.close();
				 if(conn!=null) conn.close();
			 }catch(SQLException e){
				 e.printStackTrace();
			 }
		 }
}
