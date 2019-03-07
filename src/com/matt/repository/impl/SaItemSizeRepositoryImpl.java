package com.matt.repository.impl;

import com.matt.mapper.SaItemSizeMapper;
import com.matt.model.Sa_item_size;
import com.matt.repository.BaseRepository;
import com.matt.repository.SaItemSizeRepository;
import com.matt.util.XMLReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SaItemSizeRepositoryImpl extends BaseRepository implements SaItemSizeRepository {
    private static final XMLReader reader = XMLReader.getInstance(SaItemSizeRepositoryImpl.class);
    @Override
    public Integer insert(Sa_item_size newSize) {
        return super.insertModelProcess("sa_item_size", newSize, "sn");
    }

    @Override
    public List<Sa_item_size> findSizes() {
        String sql = reader.getString("select_sa_item_size");
        try{
            return systemDao.getJdbcTemplate().query(sql, new SaItemSizeMapper());
        }catch (EmptyResultDataAccessException e){
            log.error("No Size");
            return new ArrayList<>();
        }
    }

    @Override
    public Integer update(Sa_item_size sizeToUpdate) {
        return super.updateModelProcess("sa_item_size", sizeToUpdate, "sn");
    }

    @Override
    public Integer delete(Integer sn) {
        String sql = reader.getString("delete_size");
        SqlParameterSource source = new MapSqlParameterSource().addValue("sn", sn);
        return systemDao.getJdbcTemplate().update(sql, source);
    }
}
