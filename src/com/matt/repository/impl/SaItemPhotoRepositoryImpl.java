package com.matt.repository.impl;

import com.matt.mapper.SaItemPhotoMapper;
import com.matt.model.Sa_item_photo;
import com.matt.repository.BaseRepository;
import com.matt.repository.SaItemPhotoRepository;
import com.matt.util.XMLReader;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SaItemPhotoRepositoryImpl extends BaseRepository implements SaItemPhotoRepository {
    private static final XMLReader reader = XMLReader.getInstance(SaItemPhotoRepositoryImpl.class);
    @Override
    public List<Sa_item_photo> findPhotos() {
        String sql = reader.getString("select_sa_item_photos");
        try{
            return systemDao.getJdbcTemplate().query(sql, new SaItemPhotoMapper());
        }catch (EmptyResultDataAccessException e){
            log.error("No Photo");
            return new ArrayList<>();
        }
    }

    @Override
    public Integer insert(Sa_item_photo newPhoto) {
        return super.insertModelProcess("sa_item_photo", newPhoto, "sn");
    }

    @Override
    public Integer delete(Integer sn) {
        String sql = reader.getString("delete_photo");
        SqlParameterSource source = new MapSqlParameterSource().addValue("sn", sn);
        return systemDao.getJdbcTemplate().update(sql, source);
    }
}
