package com.poscoict.emaillist.dao.test;

import java.util.List;

import com.poscoict.emaillist.dao.EmaillistDao;
import com.poscoict.emaillist.vo.EmaillistVo;

public class EmaillistDaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		testInsert();
		//testFindAll();
	}
	private static void testFindAll() {
		List<EmaillistVo> list = new EmaillistDao().findAll();
		for(EmaillistVo vo : list) {
			System.out.println(vo);
		}
		
	}
	
	private static void testInsert() {
		EmaillistVo vo = new EmaillistVo();
		vo.setFirstName("진");
		vo.setLastName("혜린");
		vo.setEmail("hello@hi.com");
		
		boolean result = new EmaillistDao().insert(vo);
		System.out.println(result ? "success" : "fail" );
		
	}

}
