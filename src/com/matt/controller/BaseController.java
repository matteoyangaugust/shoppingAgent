package com.matt.controller;

import com.matt.bean.CustomUser;
import com.matt.bean.MenuRecordBean;
import com.matt.model.System_main_menu;
import com.matt.model.System_sub_menu;
import com.matt.model.System_user;
import com.matt.service.BaseService;
import com.matt.service.impl.MenuServiceImpl;
import org.apache.commons.lang.StringEscapeUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.annotation.PostConstruct;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.LinkedHashMap;
import java.util.List;

public class BaseController {
	protected Logger log = Logger.getLogger(BaseController.class);
	@Autowired
	private MenuServiceImpl menuService;
	@Autowired
	protected MessageSource messageSource;

	@ModelAttribute("menuRecord")
	public MenuRecordBean getMenuRecord(HttpServletRequest request, LinkedHashMap<System_main_menu, List<System_sub_menu>> menus) {
		MenuRecordBean menuRecordBean = new MenuRecordBean();
		try{
			Integer mainMenuSn = Integer.parseInt(getString(request, "mainMenuSn"));
			Integer subMenuSn = Integer.parseInt(getString(request, "subMenuSn"));
			if(mainMenuSn == null || subMenuSn == null){
				throw new Exception();
			}
			System_user user = getUser();
			menuRecordBean.setInit(true);
			for (System_main_menu mainMenu : user.getMenus().keySet()) {
				if (mainMenuSn.equals(mainMenu.getSn())) {
					menuRecordBean.setMainMenu(mainMenu);
					for (System_sub_menu subMenu : user.getMenus().get(mainMenu)) {
						if (subMenuSn.equals(subMenu.getSn())) {
							menuRecordBean.setSubMenu(subMenu);
							break;
						}
					}
					break;
				}
			}
			return menuRecordBean;
		}catch (Exception e){
			outer:
			for(System_main_menu mainMenu : menus.keySet()){
				for(System_sub_menu subMenu : menus.get(mainMenu)){
					if(request.getRequestURI().contains(subMenu.getUrl())){
						menuRecordBean.setInit(true);
						menuRecordBean.setMainMenu(mainMenu);
						menuRecordBean.setSubMenu(subMenu);
						break outer;
					}
				}
			}
			return menuRecordBean;
		}
	}

	protected String toView(String viewPath, Model model, HttpServletRequest request){
		LinkedHashMap<System_main_menu, List<System_sub_menu>> menus = new LinkedHashMap<>();
		try{
			//內部登入
			menus = getUser().getMenus();
		}catch (ClassCastException cce){
			//外部登入
			menus = menuService.getAnonymousMenus();
		}finally {
			model.addAttribute("mainMenus", menus);
			model.addAttribute("menuRecord", getMenuRecord(request, menus));
			for(Cookie cookie : request.getCookies()){
				if(cookie.getName().equals("myAppLocaleCookie")){
					model.addAttribute("loc", cookie.getValue());
				}
			}
			return viewPath;
		}
	}
	/**
	 * display request all parameter
	 */
	public void displayParameters(HttpServletRequest request) {
		Enumeration<?> names = request.getParameterNames();
		while(names.hasMoreElements()){
			String name = (String)names.nextElement();
			if(request.getParameterValues(name).length < 2){
				log.info("name : " + name + " = " + request.getParameter(name));
			}else{
				String[] values = request.getParameterValues(name);
				String valueStr = "name : ";
				for(String value : values){
					valueStr += value + ",";
				}
				log.info("name : " + name + " = " + valueStr.substring(0, valueStr.length() - 1));
			}
		}
	}

	protected System_user getUser(){
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (userDetails instanceof CustomUser) {
			CustomUser customUserDetails = (CustomUser) userDetails;
			return customUserDetails.getUserInfo();
		}
		return null;
	}

	public String getString(HttpServletRequest request, String name){
		return request.getParameter(name)==null?null: StringEscapeUtils.escapeHtml(request.getParameter(name));
	}

	public String getMessage(String code){
		return messageSource.getMessage(code, null, LocaleContextHolder.getLocale());
	}
}
