package me.codegc.kmall.pojo;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

/**
 *
 * Create BY YooDing
 *
 * Des: 该类代表的是购物车
 *
 * 本功能实现参考文档 ：https://www.jianshu.com/p/b029ad2cff03
 * <a href="https://github.com/YooDing/">Github<a>
 */
public class shopCart {
	// 关键字是商品的id，值是商品实体
	private Map<String, CartItem> goodsMap = new LinkedHashMap<>();

	// 代表着购物车的总价
	private double price;

	// 把购物项（用户传递进商品）加入到购物车里边去，也应该是购物车的功能
	public void addGoods(goods gs) {
		// 获取得到购物项
		CartItem cartItem = goodsMap.get(String.valueOf(gs.getId()));
		// 判断购物车是否存在该购物项，如果不存在
		if (cartItem == null) {
			// 创建这个购物项对象
			cartItem = new CartItem();
			// 将用户传递过来的商品作为购物项
			cartItem.setGs(gs);
			// 把该购物项的数量设置为1
			cartItem.setQuantity(1);
			// 把购物项加入到购物车去
			goodsMap.put(String.valueOf(gs.getId()), cartItem);
		} else {
			// 如果存在该购物项，将购物项的数量+1
			cartItem.setQuantity(cartItem.getQuantity() + 1);
		}
	}

	// 购物车的总价就是所有购物项的价格加起来
	public double getPrice() {

		double totalPrice = 0;

		for (Entry<String, CartItem> me : goodsMap.entrySet()) {
			// 得到每个购物项
			CartItem cartItem = me.getValue();
			// 将每个购物项的钱加起来，就是购物车的总价了！
			totalPrice += cartItem.getPrice();
		}

		return totalPrice;
	}

	public Map<String, CartItem> getGoodsMap() {
		return goodsMap;
	}

	public void setBookMap(Map<String, CartItem> gMap) {
		this.goodsMap = gMap;
	}

	public void setPrice(double price) {
		this.price = price;
	}
}
