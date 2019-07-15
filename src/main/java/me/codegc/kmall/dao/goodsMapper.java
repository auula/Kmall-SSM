package me.codegc.kmall.dao;

import java.util.List;

import me.codegc.kmall.pojo.goods;

public interface goodsMapper {

	// 获取首页热点推荐数据 num是要获取多少条数
	List<goods> getHotspotData(Integer num);

	// 获取首页推荐数据
	List<goods> getRecommended(Integer num);

	// 删除对应id产品
	int deleteByPrimaryKey(Long id);

	// 插入新的产品信息
	int insert(goods record);

	int insertSelective(goods record);

	// 通过id查询
	goods selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(goods record);

	int updateByPrimaryKey(goods record);

}