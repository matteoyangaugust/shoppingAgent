package com.matt.service;

import com.matt.bean.ItemBean;
import com.matt.bean.ResultBean;
import com.matt.model.Sa_item_brand;
import com.matt.model.Sa_item_category;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service
public interface ManageItemService {
    public List<Sa_item_category> findCategories();

    public ResultBean insertItem(ItemBean newItem) throws Exception;

    public List<Sa_item_brand> findBrands();

    public List<ItemBean> findItems() throws IOException;

    public ResultBean updateItem(ItemBean itemToUpdate, Integer[] photosToDelete) throws Exception;
}
