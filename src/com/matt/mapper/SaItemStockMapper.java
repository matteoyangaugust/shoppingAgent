package com.matt.mapper;

import com.matt.model.Sa_item_stock;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SaItemStockMapper implements RowMapper<Sa_item_stock> {
    @Override
    public Sa_item_stock mapRow(ResultSet resultSet, int i) throws SQLException {
        Sa_item_stock sa_item_stock = new Sa_item_stock();
        sa_item_stock.setSn(resultSet.getInt("sn"));
        sa_item_stock.setItem_sn(resultSet.getInt("item_sn"));
        sa_item_stock.setColor_sn(resultSet.getInt("color_sn"));
        sa_item_stock.setSize_sn(resultSet.getInt("size_sn"));
        sa_item_stock.setStock(resultSet.getInt("quantity"));
        return sa_item_stock;
    }
}
