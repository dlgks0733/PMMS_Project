package com.mms.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mms.dao.CareerDAO;
import com.mms.dao.EduDAO;
import com.mms.dao.MyCertDAO;
import com.mms.dao.PlsDAO;
import com.mms.dao.PortpolioDAO;
import com.mms.dao.ProgrammerDAO;
import com.mms.vo.CareerVO;
import com.mms.vo.EduVO;
import com.mms.vo.MyCertVO;
import com.mms.vo.PlsVO;
import com.mms.vo.PortpolioVO;
import com.mms.vo.ProgrammerVO;

public class ProfileFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String progNum = request.getParameter("progNum");
		
		request.setAttribute("progNum", progNum);
		
		String url = "profile/profileForm.jsp";
		
		//기초정보 띄우기
		ProgrammerDAO progDao = ProgrammerDAO.getInstance();
		
		ProgrammerVO profVo = progDao.readProgrammer(progNum);
		
		request.setAttribute("profVo", profVo);
		
		System.out.println(profVo);
		
		//보유 자격증 리스트 띄우기
		MyCertDAO myCertDao = MyCertDAO.getInstance();
		
		List<MyCertVO> myCertList = myCertDao.selectMyCert(progNum);
		
		request.setAttribute("myCertList", myCertList);
		
		//학력 리스트 띄우기
		EduDAO eduDao = EduDAO.getInstance();
		
		List<EduVO> eduList = eduDao.selectEdu(progNum);
		
		request.setAttribute("eduList", eduList);
		
		//경력 리스트 띄우기
		CareerDAO cDao = CareerDAO.getInstance();
		
		List<CareerVO> cList = cDao.careerList(progNum);
		
		request.setAttribute("cList", cList);
		
		//프로그래밍 언어 숙련도 리스트 띄우기
		PlsDAO plsDao = PlsDAO.getInstance();
		
		ArrayList<PlsVO> plsList = plsDao.selectPls(progNum);
		
		request.setAttribute("plsList", plsList);
		

		//포트폴리오 리스트 띄우기
		PortpolioDAO pDao = PortpolioDAO.getInstance();
		
		List<PortpolioVO> portpolioList = pDao.selectPortpolio(progNum);
		
		request.setAttribute("portpolioList", portpolioList);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

		
	}

}
