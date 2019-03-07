package com.matt.controller.manage;

import com.matt.bean.ResultBean;
import com.matt.controller.BaseController;
import com.matt.model.Sa_item_brand;
import com.matt.service.ManageBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Controller
@RequestMapping(value="/manage/brand/")
public class ManageBrandController extends BaseController{
    private static final String EDIT_BRAND_VIEW = "manage/brand/edit";

    @Autowired
    private ManageBrandService manageBrandService;

    @RequestMapping(value="edit.do")
    public String edit(HttpServletRequest request, Model model){
        model.addAttribute("brands", manageBrandService.findBrands());
        return super.toView(EDIT_BRAND_VIEW, model, request);
    }

    @RequestMapping(value="insert.do")
    public @ResponseBody ResultBean insert(Sa_item_brand brand){
        try{
            return manageBrandService.insert(brand);
        }catch (Exception e){
            log.error(e.getMessage(), e);
            return new ResultBean(false,
                    messageSource.getMessage("action.insert_failed", null, LocaleContextHolder.getLocale()));
        }
    }

    @RequestMapping(value="modify.do")
    public @ResponseBody ResultBean modify(Sa_item_brand brand){
        try{
            return manageBrandService.update(brand);
        }catch (Exception e){
            log.error(e.getMessage(), e);
            return new ResultBean(false, messageSource.getMessage("notice.modify_failed", null, LocaleContextHolder.getLocale()));
        }
    }

    @RequestMapping(value="inactivating.do")
    public @ResponseBody ResultBean inactivating(Sa_item_brand inactivatingBrand){
        try{
            return manageBrandService.inactivating(inactivatingBrand);
        }catch (Exception e){
            log.error(e.getMessage(), e);
            return new ResultBean(false, messageSource.getMessage("notice.delete_failed", null, LocaleContextHolder.getLocale()));
        }
    }
}
