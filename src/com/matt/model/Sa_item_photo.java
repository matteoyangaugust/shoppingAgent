package com.matt.model;

public class Sa_item_photo {
    private Integer sn;
    private Integer item_sn;
    private String name;
    private String base_64_photo;

    public String getBase_64_photo() {
        return base_64_photo;
    }

    public void setBase_64_photo(String base_64_photo) {
        this.base_64_photo = base_64_photo;
    }

    public Integer getSn() {
        return sn;
    }

    public void setSn(Integer sn) {
        this.sn = sn;
    }

    public Integer getItem_sn() {
        return item_sn;
    }

    public void setItem_sn(Integer item_sn) {
        this.item_sn = item_sn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "\nSa_item_photo{" +
                "sn=" + sn +
                ", item_sn=" + item_sn +
                ", name='" + name + '\'' +
                ", base_64_photo='" + base_64_photo + '\'' +
                '}';
    }
}
