package com.mms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mms.vo.ProgrammerVO;

import util.DBManager;

public class ProgrammerDAO extends DBManager {

	private static ProgrammerDAO instance;
	
	public static ProgrammerDAO getInstance() {
		if (instance == null) {
			instance = new ProgrammerDAO();
		}
		return instance;
	}
	
	
	//자기 정보 띄우기
	public ProgrammerVO readProgrammer(String progNum){
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT NAME, GRADE, EMAIL, TEL, JUSO, "
				+ "		     EXTRAJUSO, BANK, ACCOUNT, PHOTO"
				+ "     FROM TBL_PROGRAMMER"
				+ "    WHERE PROG_NUM = " + progNum;
		
		
		ProgrammerVO progVo = new ProgrammerVO();
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				progVo.setName(rs.getString("NAME"));
				progVo.setGrade(rs.getString("GRADE"));
				progVo.setEmail(rs.getString("EMAIL"));
				progVo.setTel(rs.getString("TEL"));
				progVo.setJuso(rs.getString("JUSO"));
				progVo.setExtraJuso(rs.getString("EXTRAJUSO"));
				progVo.setBank(rs.getString("BANK"));
				progVo.setAccount(rs.getString("ACCOUNT"));
				progVo.setPhoto(rs.getString("PHOTO"));
				
				
				}
			} catch(SQLException e) {
				e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
				
			}
		}
		
		return progVo;
	}
	
	
	
	// 자기소개서 list띄우기
	public ArrayList<ProgrammerVO> coverLetterList(String progNum){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT INTRODUCE1"
				+ "			,INTRODUCE2"
				+ "         ,INTRODUCE3"
				+ "         ,INTRODUCE4"
				+ "         ,INTRO_FILE"
				+ "     FROM TBL_PROGRAMMER"
				+ "    WHERE PROG_NUM = ?"; 
		
		ArrayList<ProgrammerVO> list = new ArrayList<ProgrammerVO>();
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, progNum);
			rs = pstmt.executeQuery();
	
		while(rs.next()) {	
			ProgrammerVO progVo = new ProgrammerVO();
			
			progVo.setIntroduce1(rs.getString("introduce1"));
			progVo.setIntroduce2(rs.getString("introduce2"));
			progVo.setIntroduce3(rs.getString("introduce3"));
			progVo.setIntroduce4(rs.getString("introduce4"));
			progVo.setIntroFile(rs.getString("introFile"));
	
			list.add(progVo);
		}
		
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
				
			} catch (Exception e) {
				e.printStackTrace();
				
			}
		}
		return list;
		
	}
	
	//등록된 programmer 출력
		public List<ProgrammerVO> selectProgrammer(){
			String sql = "select prog_num, name, id from tbl_programmer order by prog_num desc";
			
			List<ProgrammerVO> progList = new ArrayList<ProgrammerVO>();
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn=getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					ProgrammerVO pVo = new ProgrammerVO();
					
					pVo.setProgNum(rs.getString("prog_num"));
					pVo.setName(rs.getString("name"));
					pVo.setId(rs.getString("id"));
					
					progList.add(pVo);
				}
				}catch(SQLException e) {
					e.printStackTrace();
				}finally {
					try {
						if(pstmt != null)
							pstmt.close();
						if(conn != null)
							conn.close();
						if(rs != null)
							rs.close();
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
				
				return progList;
			}
		
		// 프로그래머 STATE 업데이트 (신청할 경우 업데이트)
		
		public void updateState(String progNum) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			String sql = "UPDATE TBL_PROGRAMMER"
					+ "	     SET STATE = 1"
					+ "	   WHERE PROG_NUM = ?";
			
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, progNum);
				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
				
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
				
			}
			
		}
		}
		
		//프로그래머 이름 검색
		public ArrayList<ProgrammerVO> readProgName(String name){
			
			ArrayList<ProgrammerVO> progList = new ArrayList<ProgrammerVO>();
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "SELECT PROG_NUM, NAME, ID FROM TBL_PROGRAMMER WHERE NAME LIKE '%" + name + "%'";
			
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					ProgrammerVO pVo = new ProgrammerVO();
					
					pVo.setProgNum(rs.getString("PROG_NUM"));
					pVo.setName(rs.getString("NAME"));
					pVo.setId(rs.getString("ID"));
					
					progList.add(pVo);
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(pstmt != null)
						pstmt.close();
					if(conn != null)
						conn.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			return progList;
			
		}
}
