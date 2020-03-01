package com.mms.controller.action.project;

/**
 *  @author LEE HAN
 *  
 *  내 프로젝트 신청 내역 리스트 폼 액션
 *  
 */

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mms.controller.action.Action;
import com.mms.dao.ApplyStmtDAO;
import com.mms.vo.ApplyStmtVO;
import com.mms.vo.ProgrammerVO;

public class MyApplyStmtListFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String url = "project/myApplyStmtListForm.jsp";
		
		ProgrammerVO pVo = (ProgrammerVO) session.getAttribute("LoginUser");
		String progNum = pVo.getProgNum();
		
		ApplyStmtDAO aDao = ApplyStmtDAO.getInstance();
		ArrayList<ApplyStmtVO> myApplyAllList = aDao.myApplyStmtAllList(progNum);
		request.setAttribute("myApplyAllList", myApplyAllList);
		
		ArrayList<ApplyStmtVO> myApplyWaitList = aDao.myApplyStmtWaitList(progNum);
		request.setAttribute("myApplyWaitList", myApplyWaitList);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
