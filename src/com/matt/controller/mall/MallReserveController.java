package com.matt.controller.mall;

import com.matt.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value="/mall/reserve/")
public class MallReserveController extends BaseController{
    private static final String RESERVE_VIEW = "mall/reserve/information";
    @RequestMapping(value="info.do")
    public String information(HttpServletRequest request, Model model){
        return super.toView(RESERVE_VIEW, model, request);
    }
}
