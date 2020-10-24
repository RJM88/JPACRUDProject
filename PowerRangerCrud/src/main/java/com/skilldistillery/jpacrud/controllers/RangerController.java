package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.RangerDAO;
import com.skilldistillery.jpacrud.entities.PowerRanger;

@Controller
public class RangerController {
	@Autowired
	private RangerDAO rangerDAO;

	@RequestMapping(path = "/")
	public String index() {
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "season.do")
	public String showSeason(Integer sid, Model model) {
		PowerRanger ranger = rangerDAO.findById(sid);
		model.addAttribute("ranger", ranger);
		return "WEB-INF/season.jsp";
	}
	
	@RequestMapping(path = "addSeason.do")
	public String addSeason(PowerRanger newRanger, Model model) {
		PowerRanger ranger = rangerDAO.addSeason(newRanger);
		model.addAttribute("ranger", ranger);
		return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path = "deleteSeason.do")
	public String deleteSeason(Integer sid, Model model) {
		rangerDAO.deleteSeason(sid);
		return "WEB-INF/index.jsp";
	}
}
