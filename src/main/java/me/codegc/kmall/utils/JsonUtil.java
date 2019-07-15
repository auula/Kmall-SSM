package me.codegc.kmall.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;

/**
 *
 * Create BY YooDing
 *
 * Des: response 输出 Json
 *
 * Time: 2019年07月15日18:45:38
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */

public class JsonUtil {
	
	private final static Logger log = LogManager.getLogger(JsonUtil.class);
	/**
	 * response相应输出json字符串
	 * 
	 * @param response
	 * @param data     返回数据实体
	 */
	public static void outJson(HttpServletResponse response, Object data) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json;charset=UTF-8");
		try {
			response.getWriter().write(JSON.toJSONString(data));
		} catch (IOException e) {
			log.error(e.getMessage());
		}
	}

}
