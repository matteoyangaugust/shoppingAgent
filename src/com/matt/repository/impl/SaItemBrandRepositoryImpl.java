package com.matt.repository.impl;

import com.matt.mapper.SaItemBrandMapper;
import com.matt.model.Sa_item_brand;
import com.matt.repository.BaseRepository;
import com.matt.repository.SaItemBrandRepository;
import com.matt.util.XMLReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SaItemBrandRepositoryImpl extends BaseRepository implements SaItemBrandRepository {
    private final XMLReader reader = XMLReader.getInstance(SaItemBrandRepositoryImpl.class);
    private static final String TABLE_NAME_SA_ITEM_BRAND = "sa_item_brand";
    @Override
    public Integer insert(Sa_item_brand brand) {
        return super.insertModelProcess(TABLE_NAME_SA_ITEM_BRAND, brand, "sn");
    }

    @Override
    public List<Sa_item_brand> findBrands() {
        String sql = reader.getString("select_all_brands");
        try{
            return systemDao.getJdbcTemplate().query(sql, new SaItemBrandMapper());
        }catch(EmptyResultDataAccessException e){
            log.error("No Brands In Database");
            return new ArrayList<>();
        }
    }

    @Override
    public Integer update(Sa_item_brand updatedBrand) {
        return super.updateModelProcess(TABLE_NAME_SA_ITEM_BRAND, updatedBrand, "sn");
    }
}
