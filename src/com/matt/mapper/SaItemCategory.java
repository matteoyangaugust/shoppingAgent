package com.matt.mapper;

import com.matt.model.Sa_item_category;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SaItemCategory implements RowMapper<Sa_item_category>{

    @Override
    public Sa_item_category mapRow(ResultSet resultSet, int i) throws SQLException {
        Sa_item_category category = new Sa_item_category();
        category.setSn(resultSet.getInt("sn"));
        category.setName(resultSet.getString("name"));
        category.setActivation(resultSet.getInt("activation"));
        return category;
    }
}
