package com.mms.controller.action.myCert;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mms.controller.action.Action;
import com.mms.dao.MyCertDAO;
import com.mms.vo.MyCertVO;
import com.mms.vo.ProgrammerVO;

public class MyCertListFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();     
		
		String url = "profile/myCertList.jsp";

		ProgrammerVO pVo = (ProgrammerVO) session.getAttribute("LoginUser"); 
		
		String progNum = pVo.getProgNum(); 
		 
		MyCertDAO myCertDao = MyCertDAO.getInstance();
		
		List<MyCertVO> myCertList = myCertDao.selectMyCert(progNum);
		
		request.setAttribute("myCertList", myCertList);
		
		System.out.println(myCertList);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
