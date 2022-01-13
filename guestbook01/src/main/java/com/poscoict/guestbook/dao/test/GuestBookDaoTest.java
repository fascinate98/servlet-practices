package com.poscoict.guestbook.dao.test;

import java.util.List;

import com.poscoict.guestbook.dao.GuestBookDao;
import com.poscoict.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//testInsert();
		
		testFindAll();
	}
	
	private static void testFindAll() {
		List<GuestBookVo> list = new GuestBookDao().findAll();
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
		
	}
	
	private static void testInsert() {
		GuestBookVo vo = new GuestBookVo();
		vo.setName("진혜린");
		vo.setPassword("1234");
		vo.setMessage("으애앵");
		
		boolean result = new GuestBookDao().insert(vo);
		System.out.println(result ? "success" : "fail" );
		
	}
}
