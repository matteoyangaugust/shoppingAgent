package com.matt.repository;

import com.matt.model.Sa_item_photo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaItemPhotoRepository {
    public List<Sa_item_photo> findPhotos();
    public Integer insert(Sa_item_photo newPhoto);
    public Integer delete(Integer sn);
}
