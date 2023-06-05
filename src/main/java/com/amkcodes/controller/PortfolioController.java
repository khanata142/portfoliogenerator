package com.amkcodes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.amkcodes.beans.PortFolioDetails;
import com.amkcodes.service.PortfolioService;

@Controller
public class PortfolioController {

	@Autowired
	PortfolioService portfolioService;
	PortFolioDetails portfolioDetails;

	@RequestMapping("/")
	public String showHomePage() {
		return "index";
	}

	@RequestMapping(value = "getdetails", method = RequestMethod.POST)
	public ModelAndView fetchDetails(@ModelAttribute("portfolioDetails") PortFolioDetails portfolioDetails)
			throws Exception {
		this.portfolioDetails = portfolioDetails;
		return portfolioService.renderFinalPortfolio(portfolioDetails);
	}

	@RequestMapping("/about")
	public ModelAndView getAbout() throws Exception {
		return portfolioService.renderAboutPage(portfolioDetails);
	}

	@ExceptionHandler(Exception.class)
	public ModelAndView exceptionHandler(Exception exception) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("message", exception.getMessage());
		modelAndView.setViewName("exceptionpage");
		return modelAndView;
	}

}
