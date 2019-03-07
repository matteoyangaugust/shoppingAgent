package com.matt.controller.manage;

import com.matt.bean.ItemBean;
import com.matt.bean.ResultBean;
import com.matt.controller.BaseController;
import com.matt.service.ManageItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping(value="/manage/item/")
public class ManageItemController extends BaseController{

    private static final String EDIT_ITEM_VIEW = "manage/item/edit";
    @Autowired
    private ManageItemService manageItemService;

    @RequestMapping(value="edit.do")
    public String edit(HttpServletRequest request, Model model) throws IOException {
        model.addAttribute("categories", manageItemService.findCategories());
        model.addAttribute("brands", manageItemService.findBrands());
        model.addAttribute("items", manageItemService.findItems());
        return super.toView(EDIT_ITEM_VIEW, model, request);
    }

    @RequestMapping(value="insert.do")
    public @ResponseBody ResultBean insert(ItemBean newItem){
        try{
            return manageItemService.insertItem(newItem);
        }catch (Exception e){
            log.error(e.getMessage(), e);
            return new ResultBean(false, super.getMessage("action.insert_failed"));
        }
    }

    @RequestMapping(value="update.do")
    public @ResponseBody ResultBean update(ItemBean itemToUpdate, HttpServletRequest request, Integer[] photosToDelete){
        try{
            return manageItemService.updateItem(itemToUpdate, photosToDelete);
        }catch (Exception e){
            log.error(e.getMessage(), e);
            return new ResultBean(false, super.getMessage("notice.modify_failed"));
        }
    }
}
