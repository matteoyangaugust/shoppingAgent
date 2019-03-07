package com.matt.repository;

import com.matt.model.Sa_item_stock;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaItemStockRepository {
    public List<Sa_item_stock> findSaItemQuantities();
    public Integer insert(Sa_item_stock newSaItemQuantity);
    public Integer update(Sa_item_stock sa_item_stock);
}
