package com.matt.repository;

import com.matt.model.Sa_item;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaItemRepository {
    public List<Sa_item> findItems();
    public Integer update(Sa_item itemToUpdate);
    public Integer insert(Sa_item newItem);
}
