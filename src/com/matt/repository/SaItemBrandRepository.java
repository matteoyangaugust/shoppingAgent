package com.matt.repository;

import com.matt.model.Sa_item_brand;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaItemBrandRepository {
    public Integer insert(Sa_item_brand brand);
    public List<Sa_item_brand> findBrands();
    public Integer update(Sa_item_brand updatedBrand);
}
