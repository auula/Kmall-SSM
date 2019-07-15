package me.codegc.kmall.utils;

import java.util.Map;

import com.github.kevinsawicki.http.HttpRequest;

/**
 *
 * Create BY YooDing
 *
 * Des: simple http util & 简单的http请求工具类
 *
 * Time: 2019年07月15日18:52:01
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */
public class SimpleHttpClient {

	private String url;

	public SimpleHttpClient init(String url) {
		this.url = url;
		return this;
	}

	public String get() {
		return HttpRequest.get(this.url).body();
	}

	public static String get(String url) {
		return HttpRequest.get(url).body();
	}

	public String get(Map<String, Object> param) {
		return HttpRequest.get(this.url).form(param).body();
	}

	public static String get(String url, Map<String, Object> param) {
		return HttpRequest.get(url).form(param).body();
	}

	public String post(Map<String, Object> param) {
		return HttpRequest.post(this.url).form(param).body();
	}

	public static String post(String url, Map<String, Object> param) {
		return HttpRequest.post(url).form(param).body();
	}
}
