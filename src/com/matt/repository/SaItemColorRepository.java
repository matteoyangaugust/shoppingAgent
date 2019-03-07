package com.matt.repository;

import com.matt.model.Sa_item_color;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaItemColorRepository {
    public List<Sa_item_color> findColors();
    public Integer insert(Sa_item_color newColor);
    public Integer update(Sa_item_color colorToUpdate);
    public Integer delete(Integer sn);
}
