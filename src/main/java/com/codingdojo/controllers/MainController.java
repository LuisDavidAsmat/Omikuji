package com.codingdojo.controllers;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController 
{
	@GetMapping ("/")
	public String home()
	{
		return "redirect:omikuji";
	}
	
	@GetMapping("/omikuji")
	public String omikujiForm ()
	{
		return "sendOmikujiForm.jsp";
	}
	
	/*
	@PostMapping("/submit")
	public String processForm ( HttpSession session,
			@RequestParam(value="number") String number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="activity") String activity,
			@RequestParam(value="being") String being,
			@RequestParam(value="nice-words") String niceWords)
	{
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("activity", activity);
		session.setAttribute("being", being);
		session.setAttribute("nice-words", niceWords);
		
		
		return "redirect:omikuji/show";
	}
	*/
	@PostMapping("/submit")
	public String processForm ( HttpSession session,
			@RequestParam Map<String, String> formData
			)
	{
		formData.forEach(session::setAttribute);
		
		return "redirect:omikuji/show";
	}
	
	
	@GetMapping("omikuji/show")
	public String showOmikuji(HttpSession session, Model model)
	{
		
		LocalDate date = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEEE, 'the' d 'of' MMMM, uuuu");
		String dateString = date.format(formatter);

		model.addAttribute("dateString", dateString);
		
		List<String> attributeNames = Arrays.asList("number", "city", "person", "activity", "being", "niceWords");		
		
		attributeNames.forEach(attributeName -> 
		{
			Object attributeValue = session.getAttribute(attributeName);
			
			model.addAttribute(attributeName,attributeValue);
		});
		
		return "showOmikuji.jsp";
	}
	/*
	@GetMapping("omikuji/show")
	public String showOmikuji(HttpSession session, Model model)
	{
		model.addAttribute("number", session.getAttribute("number"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("person", session.getAttribute("person"));
		model.addAttribute("activity", session.getAttribute("hobby"));
		model.addAttribute("being", session.getAttribute("thing"));
		model.addAttribute("nice-words", session.getAttribute("message"));
		
		return "showOmikuji.jsp";
	}
	*/
	
	@GetMapping("/another")
	public String anotherPage ()
	{
		return "another.jsp";
	}
}
