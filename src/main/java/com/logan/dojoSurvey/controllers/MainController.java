package com.logan.dojoSurvey.controllers;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {
	
	@RequestMapping( "/" )
	public String indes() { return "index.jsp"; }
	
	@RequestMapping( value = "/submit", method = RequestMethod.POST )
	public String submit(
		@RequestParam( value = "name" ) String name,
		@RequestParam( value = "location" ) String location,
		@RequestParam( value = "favLang" ) String favLang,
		@RequestParam( value = "comment" ) String comment,
		
		HttpSession session
	) {
		session.setAttribute( "name", name );
		session.setAttribute( "location", location );
		session.setAttribute( "favLang", favLang );
		session.setAttribute( "comment", comment );

		return "redirect:/result";
	}
	
	@RequestMapping( "/submit" )
	public String submit() { return "redirect:/"; }
	
	@RequestMapping( "/result" )
	public String result(
		HttpSession session,
		Model model
	) {
		if ( session.getAttribute( "name" ) == null ) return "redirect:/";

		model.addAttribute( session.getAttribute( "name" ) );
		model.addAttribute( session.getAttribute( "location" ) );
		model.addAttribute( session.getAttribute( "favLang" ) );
		model.addAttribute( session.getAttribute( "comment" ) );

		return "result.jsp";
	}

}
