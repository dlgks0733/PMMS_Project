package com.mms.vo;

public class PlsVO {
/*
 * @author YUJIN
 */
	private String plsNum;
	private String plNum;
	private String plName;
	private String progNum;
	private String profiency;
	private String experience;
	
	public PlsVO() {
		// TODO Auto-generated constructor stub
	}

	public String getPlsNum() {
		return plsNum;
	}

	public void setPlsNum(String plsNum) {
		this.plsNum = plsNum;
	}

	public String getPlNum() {
		return plNum;
	}

	public void setPlNum(String plNum) {
		this.plNum = plNum;
	}

	public String getPlName() {
		return plName;
	}

	public void setPlName(String plName) {
		this.plName = plName;
	}

	public String getProgNum() {
		return progNum;
	}

	public void setProgNum(String progNum) {
		this.progNum = progNum;
	}

	public String getProfiency() {
		return profiency;
	}

	public void setProfiency(String profiency) {
		this.profiency = profiency;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	@Override
	public String toString() {
		return "PlsVO [plsNum=" + plsNum + ", plNum=" + plNum + ", plName=" + plName + ", progNum=" + progNum
				+ ", profiency=" + profiency + ", experience=" + experience + "]";
	}
	
	
	
	
	
}
