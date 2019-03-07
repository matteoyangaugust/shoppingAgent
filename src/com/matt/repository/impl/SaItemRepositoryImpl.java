package com.matt.repository.impl;

import com.matt.mapper.SaItemMapper;
import com.matt.model.Sa_item;
import com.matt.repository.BaseRepository;
import com.matt.repository.SaItemRepository;
import com.matt.util.XMLReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SaItemRepositoryImpl extends BaseRepository implements SaItemRepository {
    private static final XMLReader reader = XMLReader.getInstance(SaItemRepositoryImpl.class);


    @Override
    public List<Sa_item> findItems() {
        String sql = reader.getString("select_sa_items");
        try{
            return systemDao.getJdbcTemplate().query(sql, new SaItemMapper());
        }catch (EmptyResultDataAccessException e){
            log.error("No Items");
            return new ArrayList<>();
        }
    }

    @Override
    public Integer update(Sa_item itemToUpdate) {
        return super.updateModelProcess("sa_item", itemToUpdate, "sn");
    }

    @Override
    public Integer insert(Sa_item newItem) {
        return super.insertModelProcess("sa_item", newItem, "sn");
    }
}
