package com.amkcodes.service;

import java.io.FileOutputStream;
import java.util.ArrayList;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.amkcodes.beans.PortFolioDetails;

@Service
public class PortfolioServiceImpl implements PortfolioService {

	private String logoPath = "";
	private String profilePicPath = "";

	public ModelAndView renderFinalPortfolio(PortFolioDetails portfolioDetails) throws Exception {
		CommonsMultipartFile logo = portfolioDetails.getLogo();
		byte[] logoRead = new byte[(int) logo.getSize()];
		logo.getInputStream().read(logoRead);
		this.logoPath = "C:/Users/MUJEEB/eclipse-workspace/portfoliogenerator/src/main/webapp/WEB-INF/resources/receivedassets/"
				+ "logo.jpg";
		FileOutputStream fosLogo = new FileOutputStream(logoPath);
		fosLogo.write(logoRead);
		fosLogo.flush();
		CommonsMultipartFile profilePic = portfolioDetails.getProfilepic();
		byte[] profilePicRead = new byte[(int) profilePic.getSize()];
		profilePic.getInputStream().read(profilePicRead);
		this.profilePicPath = "C:/Users/MUJEEB/eclipse-workspace/portfoliogenerator/src/main/webapp/WEB-INF/resources/receivedassets/"
				+ "profilePicture.jpg";
		FileOutputStream fosProfile = new FileOutputStream(profilePicPath);
		fosProfile.write(profilePicRead);
		fosProfile.flush();
		fosProfile.close();
		fosLogo.close();
		String[] skillsArray = portfolioDetails.getSkills().split(",");
		ArrayList<Object> detailedList = new ArrayList<Object>();
		detailedList.add(portfolioDetails.getName());
		detailedList.add(portfolioDetails.getEmailId());
		detailedList.add(portfolioDetails.getLinkedin());
		detailedList.add(portfolioDetails.getFacebook());
		detailedList.add(portfolioDetails.getWork());
		detailedList.add(portfolioDetails.getBio());
		detailedList.add(portfolioDetails.getCareer());
		detailedList.add(skillsArray);
		detailedList.add(portfolioDetails.getAbout());
		detailedList.add(logoPath);
		detailedList.add(profilePicPath);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("finalPortfolioDetails", detailedList);
		modelAndView.setViewName("portfolio");
		return modelAndView;
	}

	public ModelAndView renderAboutPage(PortFolioDetails portfolioDetails) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("about", portfolioDetails.getAbout());
		modelAndView.setViewName("about");
		return modelAndView;
	}
}
