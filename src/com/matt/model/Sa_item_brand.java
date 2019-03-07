package com.matt.model;

public class Sa_item_brand {
    private Integer sn;
    private String name;
    private Integer activation;

    public Integer getActivation() {
        return activation;
    }

    public void setActivation(Integer activation) {
        this.activation = activation;
    }

    public Integer getSn() {
        return sn;
    }

    public void setSn(Integer sn) {
        this.sn = sn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "\nSa_item_brand{" +
                "sn=" + sn +
                ", name='" + name + '\'' +
                ", activation=" + activation +
                '}';
    }
}
