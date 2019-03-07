package com.matt.service;

import com.matt.model.System_main_menu;
import com.matt.model.System_sub_menu;

import java.util.LinkedHashMap;
import java.util.List;

public interface MenuService {
    public List<System_main_menu> findSystemMainMenus();
    public List<System_sub_menu> findSystemSubMenus();
    public LinkedHashMap<System_main_menu, List<System_sub_menu>> getAnonymousMenus();
}
