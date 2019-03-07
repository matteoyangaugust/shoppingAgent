package com.matt.controller.mall;

import com.matt.bean.MenuRecordBean;
import com.matt.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value="/mall/shopping/")
public class MallShoppingController extends BaseController{

    private static final String SHOPPING_ITEMS_VIEW = "mall/shopping/items";

    @RequestMapping(value = "items.do")
    public String items(HttpServletRequest request, Model model){
        return super.toView(SHOPPING_ITEMS_VIEW, model, request);
    }
}
