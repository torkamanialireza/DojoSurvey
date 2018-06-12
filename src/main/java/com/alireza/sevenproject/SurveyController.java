package com.alireza.sevenproject;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")

public class SurveyController {
	@RequestMapping("")
	public String indexPage() {	
		return "index.jsp";
	}
	@RequestMapping(path="", method=RequestMethod.POST)
	public String submit(HttpSession session,@RequestParam(value="yourName", defaultValue="") String yourName, @RequestParam(value="location") String location, @RequestParam(value="language") String language, @RequestParam(value="comment", required=false) String comment) {
		session.setAttribute("yourName", yourName);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", "null");
		if(comment != "null") {
			session.setAttribute("comment", comment);
		}
		return "redirect:/survey";
	}
	@RequestMapping("/survey")
	public String Surveyresult(Model model, HttpSession session,@RequestParam(value="yourName", defaultValue="") String yourName, @RequestParam(value="location") String location, @RequestParam(value="language") String language, @RequestParam(value="comment", required=false) String comment) {
		
		model.addAttribute("yourName", yourName);
		model.addAttribute("location", location);
		model.addAttribute("language", language);
		model.addAttribute("comment", comment);
		return "surveyResult.jsp";
	}

}
