package me.codegc.kmall.service;



import me.codegc.kmall.pojo.goods;

/**
 *
 * Create BY YooDing
 *
 * Des: 商品业务
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */

public interface goodsService {
	goods findGoodsById(String id);
	goods getOneGoodsInfo();
}
