package com.matt.repository;

import com.matt.model.Sa_item_size;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaItemSizeRepository {
    public Integer insert(Sa_item_size newSize);
    public List<Sa_item_size> findSizes();
    public Integer update(Sa_item_size sizeToUpdate);
    public Integer delete(Integer sn);
}
