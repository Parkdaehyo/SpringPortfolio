package com.spring.mvc.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileUploadController {
	@RequestMapping("/fileUpload.do")
	public String filee() {
		return "../testFileUpload";
	}
	
	@RequestMapping("/fileUpload_ok.do")
	public String fileUpload(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//파일받기
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest)req;
		MultipartFile mf = mr.getFile("filename");
		String filename = mf.getOriginalFilename();
		
		if (filename==null || filename.trim().equals("")) return "../index";
		
		System.out.println(filename);
		//경로지정
		HttpSession session = req.getSession();
		String upPath = session.getServletContext().getRealPath("/files");
		System.out.println("upPath = " + upPath);
		
		//서버에 파일 쓰기
		File file = new File(upPath, filename);
		mf.transferTo(file);
		return "../index";
	}
	
}


