package com.matt.model;

public class Sa_item_size {
    private Integer sn;
    private Integer item_sn;
    private String size;

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

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "\nSa_item_size{" +
                "sn=" + sn +
                ", item_sn=" + item_sn +
                ", size='" + size + '\'' +
                '}';
    }
}
