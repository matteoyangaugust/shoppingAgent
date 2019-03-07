package com.matt.service.impl;

import com.matt.bean.ItemBean;
import com.matt.bean.PhotoBean;
import com.matt.bean.ResultBean;
import com.matt.model.*;
import com.matt.repository.*;
import com.matt.service.BaseService;
import com.matt.service.ManageItemService;
import com.matt.util.ListUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.BASE64Encoder;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class ManageItemServiceImpl extends BaseService implements ManageItemService{
    @Autowired
    private SaItemCategoryRepository saItemCategoryRepository;
    @Autowired
    private SaItemRepository saItemRepository;
    @Autowired
    private SaItemBrandRepository saItemBrandRepository;
    @Autowired
    private SaItemPhotoRepository saItemPhotoRepository;
    @Autowired
    private SaItemColorRepository saItemColorRepository;
    @Autowired
    private SaItemSizeRepository saItemSizeRepository;


    @Override
    public List<Sa_item_category> findCategories() {
        List<Sa_item_category> categories = saItemCategoryRepository.findCategories();
        ListUtil.sort(categories, "name");
        return categories;
    }

    @Override
    @Transactional(rollbackFor = Exception.class, transactionManager = "system")
    public ResultBean insertItem(ItemBean newItem) throws Exception {
        List<MultipartFile> photos = new ArrayList<>();
        if(newItem.getFiles()!=null&&newItem.getFiles().length>0) {
            for (int i = 0; i < newItem.getFiles().length; i++) {
                photos.add(newItem.getFiles()[i]);
            }
        }
        List<Sa_item> items = saItemRepository.findItems();
        for(Sa_item item : items){
            if(item.getName().equals(newItem.getName()) &&
                    item.getCategory_sn().equals(newItem.getCategory_sn()) &&
                    item.getBrand_sn().equals(newItem.getBrand_sn()) &&
                    item.getGender().equals(newItem.getGender())){
                return new ResultBean(false, super.getMessage("item.duplicated"));
            }
        }
        //Insert Sa_item
        Sa_item item = new Sa_item();
        BeanUtils.copyProperties(newItem, item);
        Integer itemSn = saItemRepository.insert(item);
        if(itemSn < 1){
            throw new Exception();
        }else{
            newItem.setSn(itemSn);
            addPhoto(newItem);
        }
//        Sa_item_color color = new Sa_item_color();
//        Sa_item_size size = new Sa_item_size();
//        newItem.setAllow_color(newItem.getAllow_color() == null ? 0 : 1);
//        newItem.setAllow_size(newItem.getAllow_size() == null ? 0 : 1);
//        if(newItem.getAllow_color() == 0){
//            color.setItem_sn(newItem.getSn());
//            color.setColor("none");
//            color.setSn(saItemColorRepository.insert(color));
//            if(color.getSn() < 1){
//                throw new Exception();
//            }
//        }
//        if(newItem.getAllow_size() == 0){
//            size.setItem_sn(newItem.getSn());
//            size.setSize("none");
//            if(saItemSizeRepository.insert(size) < 1){
//                throw new Exception();
//            }
//        }

        return new ResultBean(true, super.getMessage("action.insert_success"));
    }

    private void addPhoto(ItemBean newItem) throws Exception {
        if(newItem.getFiles() != null && newItem.getFiles().length != 0){
            for(MultipartFile photo : newItem.getFiles()){
                if (!photo.isEmpty()) {
                    BASE64Encoder encoder = new BASE64Encoder();
                    Sa_item_photo saItemPhoto = new Sa_item_photo();
                    saItemPhoto.setItem_sn(newItem.getSn());
                    saItemPhoto.setName(photo.getOriginalFilename());
                    saItemPhoto.setBase_64_photo(encoder.encode(photo.getBytes()));
                    //Insert Sa_item_photo
                    if(saItemPhotoRepository.insert(saItemPhoto) < 1){
                        throw new Exception();
                    }
                }
            }
        }
    }

    @Override
    public List<Sa_item_brand> findBrands() {
        List<Sa_item_brand> brands = saItemBrandRepository.findBrands();
        ListUtil.sort(brands, "name");
        return brands;
    }

    @Override
    public List<ItemBean> findItems() throws IOException {
        List<Sa_item> items = saItemRepository.findItems();
        List<Sa_item_photo> photos = saItemPhotoRepository.findPhotos();
        List<Sa_item_brand> brands = saItemBrandRepository.findBrands();
        List<ItemBean> itemBeans = new ArrayList<>();
        for(Sa_item item : items){
            ItemBean itemBean = new ItemBean();
            for(Sa_item_brand brand : brands){
                if(item.getBrand_sn().equals(brand.getSn())){
                    itemBean.setBrand(brand);
                }
            }
            BeanUtils.copyProperties(item, itemBean);
            for(Sa_item_photo photo : photos){
                if(item.getSn().equals(photo.getItem_sn())){
                    itemBean.getPhotos().add(photo);
                }
            }
            itemBeans.add(itemBean);
        }
        ListUtil.sort(itemBeans, "category_sn", "brand_sn", "name");
        return itemBeans;
    }

    @Override
    @Transactional(rollbackFor = Exception.class, transactionManager = "system")
    public ResultBean updateItem(ItemBean itemToUpdate, Integer[] photosToDelete) throws Exception {
        List<Sa_item> items = saItemRepository.findItems();
        for(Sa_item item : items){
            if(item.getName().equals(itemToUpdate.getName()) &&
                    item.getCategory_sn().equals(itemToUpdate.getCategory_sn()) &&
                    item.getBrand_sn().equals(itemToUpdate.getBrand_sn()) &&
                    item.getGender().equals(itemToUpdate.getGender()) &&
                    !item.getSn().equals(itemToUpdate.getSn())){
                return new ResultBean(false, super.getMessage("item.duplicated"));
            }
        }

        Sa_item item = new Sa_item();
        BeanUtils.copyProperties(itemToUpdate, item);
        if(saItemRepository.update(item) < 1){
            throw new Exception();
        }else{
            if(photosToDelete != null && photosToDelete.length != 0){
                for(Integer photoSn : photosToDelete){
                    if(saItemPhotoRepository.delete(photoSn) < 1){
                        throw new Exception();
                    }
                }
            }
            addPhoto(itemToUpdate);
            return new ResultBean(true, super.getMessage("notice.modify_success"));
        }
    }

//    public String getPhoto(Sa_item_photo saPhoto) throws IOException {
//        File f = new File(BASIC_PHOTO_PATH + "\\" + saPhoto.getItem_sn() + "\\" + saPhoto.getName());
//        BufferedImage img = ImageIO.read(f);
//        ByteArrayOutputStream baos = new ByteArrayOutputStream();
//        ImageIO.write(img, "jpg", baos);
//        BASE64Encoder base64Encoder = new BASE64Encoder();
//        StringBuilder imageString = new StringBuilder();
//        imageString.append("data:image/png;base64,");
//        imageString.append(base64Encoder.encode(baos.toByteArray()));
//        return imageString.toString();
//    }
}
