package com.matt.model;

import java.util.LinkedHashMap;
import java.util.List;

public class System_user {
    public static final String ROLE_ADMIN = "ROLE_ADMIN";
    private Integer sn;
    private String username;
    private String password;
    private String name;
    private String role;
    private String email;
    private String phone;
    private String facebook_name;
    private Integer status;
    private String update_time;
    private String register_time;

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }

    public String getRegister_time() {
        return register_time;
    }

    public void setRegister_time(String register_time) {
        this.register_time = register_time;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFacebook_name() {
        return facebook_name;
    }

    public void setFacebook_name(String facebook_name) {
        this.facebook_name = facebook_name;
    }

    private LinkedHashMap<System_main_menu, List<System_sub_menu>> menus;

    public LinkedHashMap<System_main_menu, List<System_sub_menu>> getMenus() {
        return menus;
    }

    public void setMenus(LinkedHashMap<System_main_menu, List<System_sub_menu>> menus) {
        this.menus = menus;
    }

    public Integer getSn() {
        return sn;
    }

    public void setSn(Integer sn) {
        this.sn = sn;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "\nSystem_user{" +
                "sn=" + sn +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", role='" + role + '\'' +
                ", menus=" + menus +
                '}';
    }
}
