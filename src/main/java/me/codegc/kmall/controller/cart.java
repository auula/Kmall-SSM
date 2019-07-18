package me.codegc.kmall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import me.codegc.kmall.dao.goodsMapper;
import me.codegc.kmall.enume.ResponseCode;
import me.codegc.kmall.pojo.Response;
import me.codegc.kmall.pojo.goods;
import me.codegc.kmall.pojo.shopCart;

/**
 *
 * Create BY YooDing
 *
 * Des: 购物车控制器
 *
 * Time: 2019年07月15日17:22:41
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */
@Controller
@RequestMapping("/shopCart")
public class cart {

	public static final Logger log = LogManager.getLogger(cart.class);
	@Autowired
	goodsMapper gm;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;

	@SuppressWarnings("unchecked")
	@ResponseBody
	@PostMapping("/add")
	public Response<String> add(@RequestParam(required=true) String id) {
		shopCart cart = (shopCart) request.getSession().getAttribute("_cart");
		// 如果当前用户还没有点击过购买的商品，那么是用户的购物车是空的
		if (cart == null) {
			cart = new shopCart();
			request.getSession().setAttribute("_cart",cart);
		}
		goods g = gm.selectByPrimaryKey(Long.valueOf(id));
		cart.addGoods(g);
		request.getSession().setAttribute("_cart",cart);
		return Response.build(ResponseCode.normal, "添加成功!本商品已经有"+cart.getGoodsMap().get(id).getQuantity()+"件在购物车中.");
	}
	@GetMapping("/list")
	public String list() {
		// 把用户想要买的商品放到购物车上
		// 用户不单单只有一个，要让购物车上只为当前的用户服务，就需要用到会话跟踪技术了
		HttpSession session = request.getSession();
		shopCart cart = (shopCart) session.getAttribute("_cart");
		// 如果当前用户还没有点击过购买的商品，那么是用户的购物车是空的
		if (cart == null) {
			session.setAttribute("_cart", new shopCart());
		}
		return "shopCart";
	}

	@SuppressWarnings("unchecked")
    @ResponseBody
	@PostMapping("/del")
	public Response<String> del(@RequestParam(required=true) String id) {
		shopCart cart = (shopCart) request.getSession().getAttribute("_cart");
		// 如果当前用户还没有点击过购买的商品，那么是用户的购物车是空的
		if (cart == null) {
			cart = new shopCart();
			request.getSession().setAttribute("_cart",cart);
		}else {
			//移除购物车里面的商品
			cart.getGoodsMap().remove(id);
			request.getSession().setAttribute("_cart",cart);
		}
		return Response.build(ResponseCode.normal,"删除商品成功.");
	}
}
