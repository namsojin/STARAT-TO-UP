package com.startoup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.startoup.biz.email.EmailServiceImpl;

@Controller
public class EmailController {
	
	@Autowired
	private EmailServiceImpl emailSI;

}