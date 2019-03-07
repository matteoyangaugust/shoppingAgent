package com.matt.bean;

import com.matt.model.Sa_item;
import com.matt.model.Sa_item_brand;
import com.matt.model.Sa_item_photo;
import net.sf.json.JSONObject;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ItemBean extends Sa_item {

    public MultipartFile[] files;
    public List<String> fileBase64;
    public Sa_item_brand brand;
    public List<Sa_item_photo> photos;

    public ItemBean() {
        fileBase64 = new ArrayList<>();
        photos = new ArrayList<>();
    }

    public List<Sa_item_photo> getPhotos() {
        return photos;
    }

    public void setPhotos(List<Sa_item_photo> photos) {
        this.photos = photos;
    }

    public Sa_item_brand getBrand() {
        return brand;
    }

    public void setBrand(Sa_item_brand brand) {
        this.brand = brand;
    }

    public List<String> getFileBase64() {
        return fileBase64;
    }

    public void setFileBase64(List<String> fileBase64) {
        this.fileBase64 = fileBase64;
    }

    public MultipartFile[] getFiles() {
        return files;
    }

    public void setFiles(MultipartFile[] files) {
        this.files = files;
    }

    @Override
    public String toString() {
        JSONObject jsonObj = JSONObject.fromObject(this);
        return jsonObj.toString();
    }
}
