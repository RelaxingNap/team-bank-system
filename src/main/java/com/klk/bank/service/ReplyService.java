package com.klk.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klk.bank.mapper.ReplyMapper;

@Service
public class ReplyService {

	@Autowired
	private ReplyMapper replyMapper;
}
