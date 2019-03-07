package com.matt.controller.manage;

import com.matt.bean.MenuRecordBean;
import com.matt.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/manage/member/")
public class ManageMemberController extends BaseController {

    private static final String EDIT_BUYER_VIEW = "manage/member/edit";

    @RequestMapping(value = "edit.do")
    public String edit(HttpServletRequest request, Model model){
        return super.toView(EDIT_BUYER_VIEW, model, request);
    }
}
