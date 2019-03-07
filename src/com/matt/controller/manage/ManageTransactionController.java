package com.matt.controller.manage;

import com.matt.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value="/manage/transaction/")
public class ManageTransactionController extends BaseController{

    private static final String EDIT_TRANSACTION_VIEW = "manage/transaction/edit";

    @RequestMapping(value="edit.do")
    public String edit(HttpServletRequest request, Model model){
        return super.toView(EDIT_TRANSACTION_VIEW, model, request);
    }
}
