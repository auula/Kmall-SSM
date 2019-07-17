package me.codegc.kmall.pojo;

/**
 *
 * Create BY YooDing
 *
 * Des: 购物项代表的是当前书，并表示该书出现了几次
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */
public class CartItem {

	private goods gs;
	private int quantity;

	// 该购物项（商品--不一定只有一件商品）的价钱应该等于商品的数量*价格
	private double price;

	public goods getGs() {
		return gs;
	}

	public void setGs(goods gs) {
		this.gs = gs;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	//商品的价钱*数量
	public double getPrice() {
		return gs.getPrice() * this.quantity;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
}
