package com.klk.bank.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class QnaDto {
	private int id;
	private int uid;
	private String user_id;
	private String title;
	private String body;
	private int qna_parent;
	private int qna_dep;
	private int num_of_reply;
	private LocalDateTime inserted;
	
	public String getNewInserted() {
		// 24시간 이내면 시간만
		// 이전이면 년-월-일
		LocalDateTime now = LocalDateTime.now();
		if (now.minusHours(24).isBefore(inserted)) {
			return inserted.toLocalTime().toString();
		} else {
			return inserted.toLocalDate().toString();
		}
	}
	
	public void setIncreseQnaDep(int depth) {
		this.qna_dep = depth + 1;
	}
}
