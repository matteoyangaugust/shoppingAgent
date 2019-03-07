package com.matt.model;

public class Sa_item {
    private Integer sn;
    private Integer category_sn;
    private Integer brand_sn;
    private String name;
    private Integer allow_size;
    private Integer allow_color;
    private Integer gender;
    private Double default_cost;
    private Double default_international_shipping_fee;
    private Integer default_domestic_shipping_fee;
    private Integer default_profit;
    private Integer default_fixed_price;
    private Integer default_selling_price;
    private Integer does_sell;
    private String description;

    public Integer getSn() {
        return sn;
    }

    public void setSn(Integer sn) {
        this.sn = sn;
    }

    public Integer getCategory_sn() {
        return category_sn;
    }

    public void setCategory_sn(Integer category_sn) {
        this.category_sn = category_sn;
    }

    public Integer getBrand_sn() {
        return brand_sn;
    }

    public void setBrand_sn(Integer brand_sn) {
        this.brand_sn = brand_sn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAllow_size() {
        return allow_size;
    }

    public void setAllow_size(Integer allow_size) {
        this.allow_size = allow_size;
    }

    public Integer getAllow_color() {
        return allow_color;
    }

    public void setAllow_color(Integer allow_color) {
        this.allow_color = allow_color;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Double getDefault_cost() {
        return default_cost;
    }

    public void setDefault_cost(Double default_cost) {
        this.default_cost = default_cost;
    }

    public Double getDefault_international_shipping_fee() {
        return default_international_shipping_fee;
    }

    public void setDefault_international_shipping_fee(Double default_international_shipping_fee) {
        this.default_international_shipping_fee = default_international_shipping_fee;
    }

    public Integer getDefault_domestic_shipping_fee() {
        return default_domestic_shipping_fee;
    }

    public void setDefault_domestic_shipping_fee(Integer default_domestic_shipping_fee) {
        this.default_domestic_shipping_fee = default_domestic_shipping_fee;
    }

    public Integer getDefault_profit() {
        return default_profit;
    }

    public void setDefault_profit(Integer default_profit) {
        this.default_profit = default_profit;
    }

    public Integer getDefault_fixed_price() {
        return default_fixed_price;
    }

    public void setDefault_fixed_price(Integer default_fixed_price) {
        this.default_fixed_price = default_fixed_price;
    }

    public Integer getDefault_selling_price() {
        return default_selling_price;
    }

    public void setDefault_selling_price(Integer default_selling_price) {
        this.default_selling_price = default_selling_price;
    }

    public Integer getDoes_sell() {
        return does_sell;
    }

    public void setDoes_sell(Integer does_sell) {
        this.does_sell = does_sell;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "\nSa_item{" +
                "sn=" + sn +
                ", category_sn=" + category_sn +
                ", brand_sn=" + brand_sn +
                ", name='" + name + '\'' +
                ", allow_size=" + allow_size +
                ", allow_color=" + allow_color +
                ", gender=" + gender +
                ", default_cost=" + default_cost +
                ", default_international_shipping_fee=" + default_international_shipping_fee +
                ", default_domestic_shipping_fee=" + default_domestic_shipping_fee +
                ", default_profit=" + default_profit +
                ", default_fixed_price=" + default_fixed_price +
                ", default_selling_price=" + default_selling_price +
                ", does_sell=" + does_sell +
                ", description='" + description + '\'' +
                '}';
    }
}
