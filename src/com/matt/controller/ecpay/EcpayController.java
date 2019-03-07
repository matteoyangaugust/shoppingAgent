package com.matt.controller.ecpay;

import com.matt.controller.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping(value="/ecpay/")
public class EcpayController extends BaseController{

    @RequestMapping(value="afterCreate.do")
    public void afterCreate(HttpServletRequest request){
        log.info(123456);
        displayParameters(request);
    }
}
