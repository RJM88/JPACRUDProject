package com.skilldistillery.jpacrud.controllers;

import java.util.List;

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
	public String index(Model model) {
		List<PowerRanger> seasonList = rangerDAO.seasonList();
		model.addAttribute("seasonList", seasonList);
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "season.do")
	public String showSeason(Integer sid, Model model) {
		PowerRanger ranger;
		try {
			ranger = rangerDAO.findById(sid);
			model.addAttribute("ranger", ranger);
			return "WEB-INF/season.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			return "WEB-INF/error.jsp";
		}
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

	@RequestMapping(path = "updateSeason.do")
	public String updateSeason(Integer sid, PowerRanger updateRanger) {
		rangerDAO.updateSeason(sid, updateRanger);
		return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path = "goHome.do")
	public String goHome() {
		return "WEB-INF/index.jsp";
	}
	@RequestMapping(path = "addSeasonInput.do")
	public String addSeasonInput() {
		return "WEB-INF/addSeason.jsp";
	}

}

//actor = dao.update(201, betterActor);
