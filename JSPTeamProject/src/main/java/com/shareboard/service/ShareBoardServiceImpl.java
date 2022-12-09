package com.shareboard.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shareboard.model.ShareBoardDAO;

public class ShareBoardServiceImpl implements ShareBoardService {
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) {
		//화면에서 입력한 값을 받아오는 작업
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//dao객체 생성
		ShareBoardDAO dao = ShareBoardDAO.getInstance();
		
		
		dao.regist(writer, title, content);
	}
	
	
}
