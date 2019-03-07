package com.matt.service.impl;

import com.matt.bean.ResultBean;
import com.matt.model.Sa_item_category;
import com.matt.repository.SaItemCategoryRepository;
import com.matt.service.BaseService;
import com.matt.service.ManageCategoryService;
import com.matt.util.ListUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ManageCategoryServiceImpl extends BaseService implements ManageCategoryService {
    @Autowired
    private SaItemCategoryRepository saItemCategoryRepository;


    @Override
    public List<Sa_item_category> findCategories() {
        List<Sa_item_category> categories = saItemCategoryRepository.findCategories();
        ListUtil.reverseSort(categories, "sn");
        return categories;
    }

    @Override
    public ResultBean insertNewCategory(Sa_item_category newCategory) {
        List<Sa_item_category> categories = saItemCategoryRepository.findCategories();
        //檢查是否有名稱重複
        for(Sa_item_category category : categories){
            if(category.getName().equals(newCategory.getName())){
                return new ResultBean(false, super.getMessage("category.duplicated"));
            }
        }
        return saItemCategoryRepository.insert(newCategory) < 1 ?
                new ResultBean(false, super.getMessage("action.insert_failed")) :
                new ResultBean(true, super.getMessage("action.insert_success"));
    }

    @Override
    public ResultBean updateCategory(Sa_item_category categoryToUpdate) {
        List<Sa_item_category> categories = saItemCategoryRepository.findCategories();
        //檢查是否有名稱重複(非自己)
        for(Sa_item_category category : categories){
            if(!categoryToUpdate.getSn().equals(category.getSn())){
                if(category.getName().equals(categoryToUpdate.getName())){
                    return new ResultBean(false, super.getMessage("category.duplicated"));
                }
            }
        }
        return saItemCategoryRepository.update(categoryToUpdate) < 1 ?
                new ResultBean(false, super.getMessage("notice.modify_failed")) :
                new ResultBean(true, super.getMessage("notice.modify_success"));
    }

    @Override
    public ResultBean deleteCategory(Sa_item_category categoryToDelete) {
        categoryToDelete.setActivation(0);
        return saItemCategoryRepository.update(categoryToDelete) < 1 ?
                new ResultBean(false, super.getMessage("notice.delete_failed")) :
                new ResultBean(true, super.getMessage("notice.delete_success"));
    }
}
