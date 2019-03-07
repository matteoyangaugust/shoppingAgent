package com.matt.service.impl;

import com.matt.bean.ResultBean;
import com.matt.model.Sa_item_brand;
import com.matt.repository.SaItemBrandRepository;
import com.matt.service.BaseService;
import com.matt.service.ManageBrandService;
import com.matt.util.ListUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ManageBrandServiceImpl extends BaseService implements ManageBrandService{
    @Autowired
    private SaItemBrandRepository saItemBrandRepository;
    @Override
    public List<Sa_item_brand> findBrands() {
        List<Sa_item_brand> brands = saItemBrandRepository.findBrands();
        ListUtil.reverseSort(brands, "sn");
        return brands;
    }

    @Override
    public ResultBean insert(Sa_item_brand newBrand) {
        if(!checkDuplicatedBrand(newBrand)){
            return new ResultBean(false, super.getMessage("brand.duplicated"));
        }
        return saItemBrandRepository.insert(newBrand) < 1 ?
                new ResultBean(false, super.getMessage("action.insert_failed")) :
                new ResultBean(true, super.getMessage("action.insert_success"));
    }

    @Override
    public ResultBean update(Sa_item_brand updatedBrand) {
        if(!checkDuplicatedBrand(updatedBrand)){
            return new ResultBean(false, super.getMessage("brand.duplicated"));
        }
        return saItemBrandRepository.update(updatedBrand) < 1 ?
                new ResultBean(false, super.getMessage("notice.modify_failed")) :
                new ResultBean(true, super.getMessage("notice.modify_success"));
    }

    @Override
    public ResultBean inactivating(Sa_item_brand inactivatingBrand) {
        inactivatingBrand.setActivation(0);
        return saItemBrandRepository.update(inactivatingBrand) < 1 ?
                new ResultBean(false, super.getMessage("notice.delete_failed")) :
                new ResultBean(true, super.getMessage("notice.delete_success"));
    }

    private boolean checkDuplicatedBrand(Sa_item_brand brandToCheck){
        List<Sa_item_brand> brands = saItemBrandRepository.findBrands();
        for(Sa_item_brand brand : brands){
            if(brandToCheck.getSn() == null || !(brandToCheck.getSn().equals(brand.getSn()))){
                if(brand.getName().equals(brandToCheck.getName())){
                    return false;
                }
            }
        }
        return true;
    }
}
