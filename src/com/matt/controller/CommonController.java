package com.matt.controller;

import com.matt.bean.ResultBean;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/common/")
public class CommonController extends BaseController{

    @RequestMapping(value="getSpringMessage.do")
    public @ResponseBody ResultBean getSpringMessage(String code){
        return new ResultBean(true, messageSource.getMessage(code, null, LocaleContextHolder.getLocale()));
    }
}
