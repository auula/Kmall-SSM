package me.codegc.kmall.dao;

import me.codegc.kmall.pojo.goods;

public interface goodsMapper {
    int deleteByPrimaryKey(Long id);

    int insert(goods record);

    int insertSelective(goods record);

    goods selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(goods record);

    int updateByPrimaryKey(goods record);
}