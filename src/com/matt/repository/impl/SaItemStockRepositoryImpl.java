package com.matt.repository.impl;

import com.matt.model.Sa_item_stock;
import com.matt.mapper.SaItemStockMapper;
import com.matt.repository.BaseRepository;
import com.matt.repository.SaItemStockRepository;
import com.matt.util.XMLReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SaItemStockRepositoryImpl extends BaseRepository implements SaItemStockRepository {
    private final XMLReader reader = XMLReader.getInstance(SaItemStockRepositoryImpl.class);
    @Override
    public List<Sa_item_stock> findSaItemQuantities() {
        String sql = reader.getString("select_all_sa_item_quantities");
        try{
            return systemDao.getJdbcTemplate().query(sql, new SaItemStockMapper());
        }catch (EmptyResultDataAccessException e){
            log.error("No Quantity Data");
            return new ArrayList<>();
        }
    }

    @Override
    public Integer insert(Sa_item_stock newSaItemQuantity) {
        return super.insertModelProcess("sa_item_quantity", newSaItemQuantity, "sn");
    }

    @Override
    public Integer update(Sa_item_stock sa_item_stock) {
        return super.updateModelProcess("sa_item_stock", sa_item_stock, "sn");
    }
}
