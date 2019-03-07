package com.matt.repository.impl;

import com.matt.mapper.SaItemCategory;
import com.matt.model.Sa_item_category;
import com.matt.repository.BaseRepository;
import com.matt.repository.SaItemCategoryRepository;
import com.matt.util.XMLReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SaItemCategoryRepositoryImpl extends BaseRepository implements SaItemCategoryRepository {
    private static final XMLReader reader = XMLReader.getInstance(SaItemCategoryRepositoryImpl.class);
    @Override
    public List<Sa_item_category> findCategories() {
        String sql = reader.getString("select_all_categories");
        try{
            return systemDao.getJdbcTemplate().query(sql, new SaItemCategory());
        }catch (EmptyResultDataAccessException e){
            log.error("No Datas");
            return new ArrayList<>();
        }
    }

    @Override
    public Integer insert(Sa_item_category newCategory) {
        return super.insertModelProcess("sa_item_category", newCategory, "sn");
    }

    @Override
    public Integer update(Sa_item_category updatedCategory) {
        return super.updateModelProcess("sa_item_category", updatedCategory, "sn");
    }
}
