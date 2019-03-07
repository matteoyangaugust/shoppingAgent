package com.matt.service;

import com.matt.bean.ResultBean;
import com.matt.model.Sa_item_category;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ManageCategoryService {
    public List<Sa_item_category> findCategories();
    public ResultBean insertNewCategory(Sa_item_category newCategory);
    public ResultBean updateCategory(Sa_item_category categoryToUpdate);
    public ResultBean deleteCategory(Sa_item_category categoryToDelete);
}
