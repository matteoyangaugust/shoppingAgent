package com.matt.model;

public class Sa_item_color {
    private Integer sn;
    private Integer item_sn;
    private String color;

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

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "\nSa_item_color{" +
                "sn=" + sn +
                ", item_sn=" + item_sn +
                ", color='" + color + '\'' +
                '}';
    }
}
