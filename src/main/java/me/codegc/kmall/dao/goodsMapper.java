package me.codegc.kmall.dao;

import java.util.List;

import me.codegc.kmall.pojo.goods;

public interface goodsMapper {
	
	
	//获取首页热点推荐数据
    List<goods> getHotspotData(Integer num);
	
    int deleteByPrimaryKey(Long id);

    int insert(goods record);

    int insertSelective(goods record);

    goods selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(goods record);

    int updateByPrimaryKey(goods record);
    
   
    
}