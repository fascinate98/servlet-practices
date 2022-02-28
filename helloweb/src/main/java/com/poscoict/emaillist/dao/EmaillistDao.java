package com.poscoict.emaillist.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.poscoict.emaillist.vo.EmaillistVo;

public class EmaillistDao {
	public List<EmaillistVo> findAll(){
		List<EmaillistVo> result = new ArrayList<EmaillistVo>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		  try {
			  //1. 드라이버 로딩
	          Class.forName("org.mariadb.jdbc.Driver");
	          String url = "jdbc:mysql://192.168.0.73:3307/webdb?characterEncoding=UTF-8&serverTimezone=UTC";
	          String user = "webdb";
	          String passwd = "webdb";
	          conn = DriverManager.getConnection(url, user, passwd);
	          
	          //3. sql 준비
	          String sql = "select no, first_name, last_name, email from emaillist order by no desc";
	          conn.prepareStatement(sql);
	          
	          //4. 바인딩
	          
	          //5. sql 실행
	          
	          rs = pstmt.executeQuery();
	          while(rs.next()) {
	        	  long no = rs.getLong(1);
	        	  String first_name = rs.getString(2);
	        	  String last_name = rs.getString(3);
	        	  String email = rs.getString(4);
	        	  
	        	  EmaillistVo vo = new EmaillistVo();
	        	  vo.setNo(no);
	        	  vo.setFirstName(first_name);
	        	  vo.setLastName(last_name);
	        	  vo.setEmail(email);
	        	  
	        	  result.add(vo);
	          }
	      } catch (ClassNotFoundException e) {
	            System.out.print("드라이버 로딩실패 : " + e.getMessage());
	      }catch(SQLException e) {
	    	  System.out.print("error : " + e.getMessage());
	      }finally {
			  try {
				  if(rs != null) {
					  rs.close();
				  }
				  if(pstmt != null) {
					  pstmt.close();
				  }
	    		 
				  if(conn != null) {
					  conn.close();
				  }

	    	  }catch(SQLException e){
	    		  System.out.println("error" + e);
	    	 }
	    	  
	      }
		  
		  return result;
	   }

	}