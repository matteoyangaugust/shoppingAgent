package com.matt.bean;

import com.matt.model.Sa_item_photo;

import java.util.ArrayList;
import java.util.List;

public class PhotoBean extends Sa_item_photo {
    public String fileBase64;
    public String absolutePath;

    public String getAbsolutePath() {
        return absolutePath;
    }

    public void setAbsolutePath(String absolutePath) {
        this.absolutePath = absolutePath;
    }

    public String getFileBase64() {
        return fileBase64;
    }

    public void setFileBase64(String fileBase64) {
        this.fileBase64 = fileBase64;
    }

    @Override
    public String toString() {
        return "\nPhotoBean{" +
                "fileBase64='" + fileBase64 + '\'' +
                ", absolutePath='" + absolutePath + '\'' +
                '}';
    }
}
