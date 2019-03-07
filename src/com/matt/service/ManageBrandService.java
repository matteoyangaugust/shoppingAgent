package com.matt.service;

import com.matt.bean.ResultBean;
import com.matt.model.Sa_item_brand;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ManageBrandService {
    public List<Sa_item_brand> findBrands();
    public ResultBean insert(Sa_item_brand brand);
    public ResultBean update(Sa_item_brand updatedBrand);
    public ResultBean inactivating(Sa_item_brand inactivatingBrand);

}
