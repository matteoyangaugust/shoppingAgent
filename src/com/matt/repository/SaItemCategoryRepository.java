package com.matt.repository;

import com.matt.model.Sa_item_category;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaItemCategoryRepository {
    public List<Sa_item_category> findCategories();
    public Integer insert(Sa_item_category newCategory);
    public Integer update(Sa_item_category updatedCategory);
}
