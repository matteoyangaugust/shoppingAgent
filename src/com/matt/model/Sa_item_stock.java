package com.matt.model;

public class Sa_item_stock {
    private Integer sn;
    private Integer item_sn;
    private Integer color_sn;
    private Integer size_sn;
    private Integer stock;

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

    public Integer getColor_sn() {
        return color_sn;
    }

    public void setColor_sn(Integer color_sn) {
        this.color_sn = color_sn;
    }

    public Integer getSize_sn() {
        return size_sn;
    }

    public void setSize_sn(Integer size_sn) {
        this.size_sn = size_sn;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    @Override
    public String toString() {
        return "\nSa_item_stock{" +
                "sn=" + sn +
                ", item_sn=" + item_sn +
                ", color_sn=" + color_sn +
                ", size_sn=" + size_sn +
                ", stock=" + stock +
                '}';
    }
}
