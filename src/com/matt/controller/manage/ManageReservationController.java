package com.matt.controller.manage;

import com.matt.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value="/manage/reservation/")
public class ManageReservationController extends BaseController{

    private static final String EDIT_RESERVATION_VIEW = "manage/reservation/edit";

    @RequestMapping(value="edit.do")
    public String edit(HttpServletRequest request, Model model){
        return super.toView(EDIT_RESERVATION_VIEW, model, request);
    }
}
