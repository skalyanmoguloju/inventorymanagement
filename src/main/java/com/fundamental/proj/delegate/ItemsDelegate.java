package com.fundamental.proj.delegate;

import com.fundamental.proj.controller.bean.ItemsBean;
import com.fundamental.proj.mapper.ItemsBeanMapper;
import com.fundamental.proj.model.Items;
import com.fundamental.proj.service.ItemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by sai on 3/9/16.
 */
@Service
public class ItemsDelegate {

    @Autowired
    private ItemsService itemsService;

    @Autowired
    private ItemsBeanMapper itemsBeanMapper;

    @Transactional
    public List<ItemsBean> getAllItems(){
        List<Items> items;
        items = itemsService.getAllItems();
        return  itemsBeanMapper.mapItemBean(items);
    }

    @Transactional
    public List<String> getAllCatgs(){
        List<String> items;
        items = itemsService.getAllCatgs();
        return items;
    }
    @Transactional
    public List<ItemsBean> getAllItemsContainingSearchTerm(String s, String cat) {
        List<Items> items;
        items = itemsService.getAllItemsContainingSearchTerm(s,cat);
        return itemsBeanMapper.mapItemBean(items);
    }

    @Transactional
    public List<ItemsBean> getAllCatItemsContainingSearchTerm(String s) {
        List<Items> items;
        items = itemsService.getAllCatItemsContainingSearchTerm(s);
        return itemsBeanMapper.mapItemBean(items);
    }
    @Transactional
    public void addItem(ItemsBean itemsBean)
    {
        Items items;
        items = itemsBeanMapper.mapBeanToItems(itemsBean);
        itemsService.addItem(items);
    }

    @Transactional
    public List<Long> updateSoldCount(ItemsBean itemsBean)
    {
        Items items = itemsBeanMapper.mapBeanToItems(itemsBean);
        return itemsService.updateSoldCount(items);
    }
}
