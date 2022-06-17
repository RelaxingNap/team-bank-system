package com.klk.bank.dummy;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class ReplyDto {

	private int id;
	
	private int product_id;
	
	private String detail;
	
	private String user_id;
	
	private String writer_nickname;
	
	private LocalDateTime date;
	
	public String getPrettyDate() {
		// 상품정보 올린지 24시간 이내면 시간만
		// 그 이전이면 년-월-일
		LocalDateTime now = LocalDateTime.now();
		if (now.minusHours(24).isBefore(date)) {
			return date.toLocalTime().toString();
		} else {
			return date.toLocalDate().toString();
		}
	}
	
}