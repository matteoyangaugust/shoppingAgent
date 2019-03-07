package com.matt.service;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

@Service
public class BaseService {
	public Logger log = Logger.getLogger(BaseService.class);
	@Autowired
	public MessageSource messageSource;
	public String BASIC_PHOTO_PATH;
	@PostConstruct
	public void init(){
		BASIC_PHOTO_PATH = getMessage("item_photo.path");
	}
	public String getMessage(String code){
		return messageSource.getMessage(code, null, LocaleContextHolder.getLocale());
	}
}
