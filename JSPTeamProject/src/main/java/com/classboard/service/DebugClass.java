package com.classboard.service;

import java.util.ArrayList;

import com.classboard.model.ClassBoardDAO;
import com.classboard.model.ClassBoardVO;

public class DebugClass {
	
	public static void main(String[] args) {
		
		ClassBoardDAO dao = ClassBoardDAO.getInstance();
		
		ArrayList<ClassBoardVO> list = dao.getList();
		
		for(ClassBoardVO vo : list) {
			System.out.println(vo);
		}
		
	}

}
