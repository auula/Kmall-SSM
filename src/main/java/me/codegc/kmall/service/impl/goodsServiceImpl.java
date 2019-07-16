package me.codegc.kmall.service.impl;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.codegc.kmall.dao.goodsMapper;
import me.codegc.kmall.pojo.goods;
import me.codegc.kmall.service.goodsService;

/**
 * goods业务存实现 <a href="https://github.com/YooDing/">Github<a>
 */
@Service
public class goodsServiceImpl implements goodsService {

	
	private static final Logger log = LogManager.getLogger(goodsService.class);
	
	@Autowired
	goodsMapper gm;
	/*
	 * (non-Javadoc)
	 * 
	 * @see me.codegc.kmall.service.goodsService#findGoodsById(java.lang.Integer)
	 */
	@Override
	public goods findGoodsById(String id) {
		return gm.selectByPrimaryKey(Long.valueOf(id));
	}
	/*
	 * (non-Javadoc)
	 * 
	 * @see me.codegc.kmall.service.goodsService#getOneGoodsInfo()
	 */
	@Override
	public goods getOneGoodsInfo() {
		List<goods> recommended = gm.getRecommended(1);
		//循环递归 必须要获取到值
		return recommended != null ? recommended.get(0) : getOneGoodsInfo();
	}

}
