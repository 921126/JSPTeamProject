package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classboard.model.ClassBoardVO;
import com.classboard.service.CBService;
import com.classboard.service.CBServiceImpl;

@WebServlet("*.classboard")
public class ClassBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글처리
		request.setCharacterEncoding("UTF-8");
		
		//요청분기
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		//서비스 객체 생성
		CBService sv = new CBServiceImpl();
		
		switch (command) {
		case "/classboard/registForm.classboard": {//글등록
			
			CBService service = new CBServiceImpl();
			sv.regist(request, response);
			
			response.sendRedirect("classboard_list.classboard");
			
			break;
		}
		case "/classboard/classboard_list.classboard": {//글목록페이지
			
			//글 목록들의 객체(vo)를 리스트로 받아옴.
			ArrayList<ClassBoardVO> list = sv.getList(request, response);
			//다음페이지로 넘어갈 때 글 리스트정보 갖고 가도록 request에 저장
			request.setAttribute("list", list);
			//forward방식으로 데이터를 갖고 다음 페이지로 넘어감.
			request.getRequestDispatcher("classboard_list.jsp").forward(request, response);
			
			break;
		}
		case "/classboard/classboard_content.classboard": {//글 내용 확인
			
			ClassBoardVO vo = sv.getContent(request, response);
			//다음페이지로 넘어갈 때 글 내용(vo) 갖고 나감
			request.setAttribute("vo",vo);
			//forward방식으로 content 페이지로 넘어감
			request.getRequestDispatcher("classboard_content.jsp").forward(request,response);
			
			break;
		}
		case "/classboard/classboard_modify.classboard": {//글 수정
			
			
			
			break;
		}
		case "/classboard/classboard_delete.classboard": {//글 삭제
			
			break;
		}
		default:
			break;
		}
		
		
		
	}

}
