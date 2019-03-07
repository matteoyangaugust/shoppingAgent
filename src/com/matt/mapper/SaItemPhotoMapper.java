package com.matt.mapper;

import com.matt.model.Sa_item_photo;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SaItemPhotoMapper implements RowMapper<Sa_item_photo> {
    @Override
    public Sa_item_photo mapRow(ResultSet resultSet, int i) throws SQLException {
        Sa_item_photo photo = new Sa_item_photo();
        photo.setSn(resultSet.getInt("sn"));
        photo.setItem_sn(resultSet.getInt("item_sn"));
        photo.setName(resultSet.getString("name"));
        photo.setBase_64_photo(resultSet.getString("base_64_photo"));
        return photo;
    }
}
