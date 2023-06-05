package com.amkcodes.beans;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class PortFolioDetails {
	private String name;
	private String emailId;
	private String linkedin;
	private String facebook;
	private String work;
	private String bio;
	private String career;
	private String skills;
	private String about;
	private CommonsMultipartFile logo;
	private CommonsMultipartFile profilepic;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getLinkedin() {
		return linkedin;
	}
	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public CommonsMultipartFile getLogo() {
		return logo;
	}
	public void setLogo(CommonsMultipartFile logo) {
		this.logo = logo;
	}
	public CommonsMultipartFile getProfilepic() {
		return profilepic;
	}
	public void setProfilepic(CommonsMultipartFile profilepic) {
		this.profilepic = profilepic;
	}
	

}
