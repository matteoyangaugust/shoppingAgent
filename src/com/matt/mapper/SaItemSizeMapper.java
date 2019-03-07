package com.matt.mapper;

import com.matt.model.Sa_item_size;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SaItemSizeMapper implements RowMapper<Sa_item_size>{
    @Override
    public Sa_item_size mapRow(ResultSet resultSet, int i) throws SQLException {
        Sa_item_size size = new Sa_item_size();
        size.setSn(resultSet.getInt("sn"));
        size.setItem_sn(resultSet.getInt("item_sn"));
        size.setSize(resultSet.getString("size"));
        return size;
    }
}
