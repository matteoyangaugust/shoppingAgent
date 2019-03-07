package com.matt.mapper;

import com.matt.model.Sa_item_color;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SaItemColorMapper implements RowMapper<Sa_item_color> {
    @Override
    public Sa_item_color mapRow(ResultSet resultSet, int i) throws SQLException {
        Sa_item_color color = new Sa_item_color();
        color.setSn(resultSet.getInt("sn"));
        color.setItem_sn(resultSet.getInt("item_sn"));
        color.setColor(resultSet.getString("color"));
        return color;
    }
}
