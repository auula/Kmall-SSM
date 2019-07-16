package me.codegc.kmall.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import me.codegc.kmall.pojo.goods;
import me.codegc.kmall.service.goodsService;

/**
 *
 * Create BY YooDing
 *
 * Des: 商品详情
 *
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */
@Controller
@RequestMapping("/goods/info")
public class goodsInfo {
	private static final Logger log = LogManager.getLogger(goodsInfo.class);
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	
	@Autowired
	goodsService gs;

	@GetMapping("/{id}")
	public String goodsInfoView(@PathVariable("id") String id) {
		//商品id为空就去数据库随机获取一条记录
		if (StringUtils.isBlank(id) || StringUtils.isEmpty(id)) {
			request.setAttribute("ginfo", gs.getOneGoodsInfo());
			return "goods";
		}
		goods gsinfo = gs.findGoodsById(id);
		//商品为空或者没有
		if( gsinfo == null) {
			request.setAttribute("error", "商品不存在或者已经被下架了。");
			return "error/error";
		}
		request.setAttribute("ginfo",gsinfo);
		return "goods";
	}
}
