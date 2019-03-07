package com.matt.mapper;

import com.matt.model.Sa_item;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SaItemMapper implements RowMapper<Sa_item> {
    @Override
    public Sa_item mapRow(ResultSet resultSet, int i) throws SQLException {
        Sa_item item = new Sa_item();
        item.setSn(resultSet.getInt("sn"));
        item.setCategory_sn(resultSet.getInt("category_sn"));
        item.setBrand_sn(resultSet.getInt("brand_sn"));
        item.setName(resultSet.getString("name"));
        item.setAllow_size(resultSet.getInt("allow_size"));
        item.setAllow_color(resultSet.getInt("allow_color"));
        item.setGender(resultSet.getInt("gender"));
        item.setDefault_cost(resultSet.getDouble("default_cost"));
        item.setDefault_international_shipping_fee(resultSet.getDouble("default_international_shipping_fee"));
        item.setDefault_domestic_shipping_fee(resultSet.getInt("default_domestic_shipping_fee"));
        item.setDefault_profit(resultSet.getInt("default_profit"));
        item.setDefault_fixed_price(resultSet.getInt("default_fixed_price"));
        item.setDefault_selling_price(resultSet.getInt("default_selling_price"));
        item.setDoes_sell(resultSet.getInt("does_sell"));
        item.setDescription(resultSet.getString("description"));
        return item;
    }
}
