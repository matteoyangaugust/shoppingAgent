package com.matt.mapper;

import com.matt.model.Sa_item_brand;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SaItemBrandMapper implements RowMapper<Sa_item_brand> {
    @Override
    public Sa_item_brand mapRow(ResultSet resultSet, int i) throws SQLException {
        Sa_item_brand brand = new Sa_item_brand();
        brand.setSn(resultSet.getInt("sn"));
        brand.setName(resultSet.getString("name"));
        brand.setActivation(resultSet.getInt("activation"));
        return brand;
    }
}
