package com.notice;

public class Notice {
	
	private int noticeID;
	private String date;
	private String description;
	
	public Notice(int noticeID, String date, String description) {
		super();
		this.noticeID = noticeID;
		this.date = date;
		this.description = description;
	}

	public int getNoticeID() {
		return noticeID;
	}

	public void setNoticeID(int noticeID) {
		this.noticeID = noticeID;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}

