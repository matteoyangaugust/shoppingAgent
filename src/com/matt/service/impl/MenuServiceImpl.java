package com.matt.service.impl;

import com.matt.model.System_main_menu;
import com.matt.model.System_sub_menu;
import com.matt.repository.SystemMainMenuRepository;
import com.matt.repository.SystemSubMenuRepository;
import com.matt.service.BaseService;
import com.matt.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

@Service
public class MenuServiceImpl extends BaseService implements MenuService {
    @Autowired
    private SystemMainMenuRepository systemMainMenuRepository;
    @Autowired
    private SystemSubMenuRepository systemSubMenuRepository;

    @Override
    public List<System_main_menu> findSystemMainMenus(){
        return systemMainMenuRepository.findMainMenu();
    }
    @Override
    public List<System_sub_menu> findSystemSubMenus(){
        return systemSubMenuRepository.findSubMenus();
    }
    @Override
    public LinkedHashMap<System_main_menu, List<System_sub_menu>> getAnonymousMenus(){
        LinkedHashMap<System_main_menu, List<System_sub_menu>> menus = new LinkedHashMap<>();
        List<System_main_menu> mainMenus = findSystemMainMenus();
        List<System_sub_menu> subMenus = findSystemSubMenus();
        for(System_main_menu mainMenu : mainMenus){
            List<System_sub_menu> authorisedSubMenu = new ArrayList<>();
            for(System_sub_menu subMenu : subMenus){
                if(mainMenu.getSn().equals(subMenu.getMain_menu_sn())){
                    if(subMenu.getRoles().contains("ROLE_ANONYMOUS")){
                        authorisedSubMenu.add(subMenu);
                    }
                }
            }
            menus.put(mainMenu, authorisedSubMenu);
        }
        return menus;
    }
}
