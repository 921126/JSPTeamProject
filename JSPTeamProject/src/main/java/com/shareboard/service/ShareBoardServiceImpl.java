package com.shareboard.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shareboard.model.ShareBoardDAO;
import com.shareboard.model.ShareBoardVO;
import com.user.model.UserDAO;
import com.user.model.UserVO;

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

	@Override
	public ArrayList<ShareBoardVO> getList(HttpServletRequest request, HttpServletResponse response) {
		ShareBoardDAO dao = ShareBoardDAO.getInstance();
		ArrayList<ShareBoardVO> list = dao.getList();
		
		return list;
	}
	
	
	
	
	
//	//로그인처리, 작성자 id 받아오기(안씀)
//	@Override
//	public void userName(HttpServletRequest request, HttpServletResponse response) {
//		UserDAO udao = UserDAO.getInstance();
//		UserVO vo = udao.login("ohy", "1234");
//		HttpSession session = request.getSession();
//		session.setAttribute("user_id", vo.getId());
//	}
	
}
