package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shareboard.model.ShareBoardVO;
import com.shareboard.service.ShareBoardServiceImpl;

@WebServlet("*.sb")
public class ShareBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//utf-8 인코딩
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		System.out.println("요청(테스트) : " + command);
		
		//서비스 객체 생성
		ShareBoardServiceImpl service = new ShareBoardServiceImpl();
		
		//세션 생성
		HttpSession session = request.getSession();
		
		if(command.equals("/shareboard/registForm.sb")) { //글 등록
			service.regist(request, response);
			//작성 후 리스트로 보내기
			response.sendRedirect("shareboard_list.sb");
		}
		else if(command.equals("/shareboard/shareboard_write.sb")) { //글 작성
			
			request.getRequestDispatcher("shareboard_write.jsp").forward(request, response);
			return;
		}
		else if(command.equals("/shareboard/shareboard_list.sb")) { //글 목록
			//목록 조회 메소드 - dao에서 받은 list를 화면에 뿌리기
			ArrayList<ShareBoardVO> list = service.getList(request, response);
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("shareboard_list.jsp").forward(request, response);
		}
		else if(command.equals("/shareboard/shareboard_modify.sb")) { //글 수정
			request.getRequestDispatcher("shareboard_modify.jsp").forward(request, response);
		}
		else if(command.equals("/shareboard/shareboard_delete.sb")) { //글 삭제
			response.sendRedirect("shareboard_list.sb");
		}
		else if(command.equals("/shareboard/shareboard_content.sb")) { //
			
		}
		
	}
}
