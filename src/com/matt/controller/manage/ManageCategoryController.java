package com.matt.controller.manage;

import com.matt.bean.MenuRecordBean;
import com.matt.bean.ResultBean;
import com.matt.controller.BaseController;
import com.matt.model.Sa_item_category;
import com.matt.service.ManageCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value="/manage/category/")
public class ManageCategoryController extends BaseController{

    private static final String EDIT_CATEGORY_VIEW = "manage/category/edit";
    @Autowired
    private ManageCategoryService manageCategoryService;
    @RequestMapping(value="edit.do")
    public String edit(HttpServletRequest request, Model model){
        model.addAttribute("categories", manageCategoryService.findCategories());
        return super.toView(EDIT_CATEGORY_VIEW, model, request);
    }

    @RequestMapping(value="insert.do")
    public @ResponseBody ResultBean insert(Sa_item_category newCategory){
        try{
            return manageCategoryService.insertNewCategory(newCategory);
        }catch (Exception e){
            log.error(e.getMessage(), e);
            return new ResultBean(false,
                    messageSource.getMessage("action.insert_failed", null, LocaleContextHolder.getLocale()));
        }
    }

    @RequestMapping(value="update.do")
    public @ResponseBody ResultBean update(Sa_item_category categoryToUpdate){
        try{
            return manageCategoryService.updateCategory(categoryToUpdate);
        }catch (Exception e){
            log.error(e.getMessage(), e);
            return new ResultBean(false,
                    messageSource.getMessage("notice.modify_failed", null, LocaleContextHolder.getLocale()));
        }
    }

    @RequestMapping(value="delete.do")
    public @ResponseBody ResultBean delete(Sa_item_category categoryToDelete){
        try{
            return manageCategoryService.deleteCategory(categoryToDelete);
        }catch (Exception e){
            log.error(e.getMessage(), e);
            return new ResultBean(false,
                    messageSource.getMessage("notice.delete_failed", null, LocaleContextHolder.getLocale()));
        }
    }
}
