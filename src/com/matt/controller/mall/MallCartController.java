package com.matt.controller.mall;

import com.matt.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/mall/cart/")
public class MallCartController extends BaseController{

    private static final String SHOW_CART_VIEW = "mall/cart/show";

    @RequestMapping(value="show.do")
    public String show(HttpServletRequest request, Model model){
        try{
            super.getUser();
            log.info("\nSession ID : " + request.getSession().getAttribute("sessionID"));
            log.info("\nReal Session ID : " + request.getSession().getId());
//            request.getSession().
        }catch (Exception e){
            log.info("\nSet Session ID : " + request.getSession().getId());
            request.getSession().setAttribute("sessionID", request.getSession().getId());
        }
        return super.toView(SHOW_CART_VIEW, model, request);
    }
}
