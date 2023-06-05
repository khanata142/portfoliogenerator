package com.amkcodes.service;

import org.springframework.web.servlet.ModelAndView;

import com.amkcodes.beans.PortFolioDetails;

public interface PortfolioService {
	public abstract ModelAndView renderFinalPortfolio(PortFolioDetails portfolioDetails) throws Exception;

	public abstract ModelAndView renderAboutPage(PortFolioDetails portfolioDetails) throws Exception;
}
