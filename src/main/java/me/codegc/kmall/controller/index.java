package me.codegc.kmall.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.codegc.kmall.dao.goodsMapper;
import me.codegc.kmall.enume.ResponseCode;
import me.codegc.kmall.pojo.Response;

@Controller
@RequestMapping("/")
public class index {

	@Autowired
	goodsMapper gm;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	private static final Logger logger = LogManager.getLogger(index.class);

	@RequestMapping(method = RequestMethod.GET, value = { "/", "index.html" })
	public String indexView() {
		request.setAttribute("HOT",gm.getHotspotData(8));
		request.setAttribute("Rlist", gm.getRecommended(10));
		logger.info("idnex.html");
		return "index";
	}

	@GetMapping("/list")
	@ResponseBody
	public Response<List> Hot() {
		return Response.build(ResponseCode.normal, gm.getHotspotData(2));
	}

}
