package com.dao;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class DaoImpl{
	String sDBDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String sConnStr = "jdbc:sqlserver://localhost:1433;DatabaseName=lkx";//设置数据库名称为：
    String user = "root";  //登录数据库用户名
    String password = "123456";   //登录数据库密码
    Connection connect = null;
    ResultSet rs = null;
    int count = 0;
    private PreparedStatement stmt=null;
    public DaoImpl()
    {
    	 try {
	            Class.forName(sDBDriver); //指定JDBC数据库驱动程序
	            }
	    catch(java.lang.ClassNotFoundException e) {//捕获异常

	            }
    }
    public Connection getConnection(){
    	
    	Connection con = null;
    	 try{
    		 con = DriverManager.getConnection(sConnStr,user,password);
    		 System.out.println("getConnection:"+con);
    	 }catch(Exception ee){
    		 System.out.println("error:"+ee.toString());
         }
    	 return con;
    }
  
	
    public List executeQuery(String sql){
		try {
			 connect =getConnection();
			 Statement stmt = connect.createStatement();
			 ResultSet rs = stmt.executeQuery(sql);
			 List row = new ArrayList();
			 while (rs.next()) {
			 Map col = new HashMap();
			 for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) 
				 col.put(rs.getMetaData().getColumnName(i), rs.getString(i));
				row.add(col);
				
			}
			return (List) row;
		} catch (SQLException e) {
			return null;
		} catch (Exception e) {
			return null;
		}finally{
			this.releaseStatement(rs);
			this.releaseConnection(connect);
		}
	}

	
	public int executeUpdate(String sql) {
		try{
			connect=getConnection();
			Statement stmt=connect.createStatement();
			count=stmt.executeUpdate(sql);
		}catch(SQLException ex){
			System.err.println(ex.getMessage());
		}finally{
			this.releaseConnection(connect);
		}
		return count;
	}
	
	public List executeQuery(String SQL,int n,int pagesize){
		List row = new ArrayList();
		Statement stmt;
		int p = 0;
		try {
			stmt = getConnection().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = stmt.executeQuery(SQL);
			
			if(rs.last()){ 
				int numberOfRecords = rs.getRow(); 
				this.count = numberOfRecords;
				int totalPages = numberOfRecords / pagesize + ( (numberOfRecords % pagesize)>0? 1 : 0); 
				if(totalPages<n)return new ArrayList();
				int start = pagesize * (( n > totalPages ? totalPages : n) -1 )+1 ;  
				rs.absolute(start);  
			
				do {         
					 Map col = new HashMap();
					 for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) 
						 col.put(rs.getMetaData().getColumnName(i), rs.getString(i));
	
						row.add(col);  
				} while (rs.next() && (++p)<pagesize);
			}else{
				this.count=0;
			}
			return row;
		}catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			this.releaseStatement(rs);
			this.releaseConnection(connect);
		}
	
	}

	public void releaseConnection(Connection con){
	    try {
	        if (con != null && !con.isClosed()){
	            con.close();
	        }
	    } catch (SQLException se){
	        System.out.println("Close the connection encounter error!\n" + se.getMessage());
	    }
	}
	
	public void releaseStatement(ResultSet rs){
	    try {
	        if (rs != null){
	            rs.close();
	        }
	
	    } catch (SQLException se){
	        System.out.println("Close the ResultSet error!\n" + se.getMessage());
	    }      	  
	}
	
	
		public int getCount() {
			return count;
		}
		
		public  void close(ResultSet rs, PreparedStatement stmt, Connection conn) {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		
		
}
