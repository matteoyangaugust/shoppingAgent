package com.matt.repository.impl;

import com.matt.mapper.SaItemColorMapper;
import com.matt.model.Sa_item_color;
import com.matt.repository.BaseRepository;
import com.matt.repository.SaItemColorRepository;
import com.matt.util.XMLReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SaItemColorRepositoryImpl extends BaseRepository implements SaItemColorRepository {
    private static final XMLReader reader = XMLReader.getInstance(SaItemColorRepositoryImpl.class);
    @Override
    public List<Sa_item_color> findColors() {
        String sql = reader.getString("select_sa_item_colors");
        try{
            return systemDao.getJdbcTemplate().query(sql, new SaItemColorMapper());
        }catch (EmptyResultDataAccessException e){
            log.error("No Color");
            return new ArrayList<>();
        }
    }

    @Override
    public Integer insert(Sa_item_color newColor) {
        return super.insertModelProcess("sa_item_color", newColor, "sn");
    }

    @Override
    public Integer update(Sa_item_color colorToUpdate) {
        return super.updateModelProcess("sa_item_color", colorToUpdate, "sn");
    }

    @Override
    public Integer delete(Integer sn) {
        String sql = reader.getString("delete_color");
        SqlParameterSource source = new MapSqlParameterSource().addValue("sn", sn);
        return systemDao.getJdbcTemplate().update(sql, source);
    }
}
