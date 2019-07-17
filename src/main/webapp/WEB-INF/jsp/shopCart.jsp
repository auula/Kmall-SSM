<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>购物车</title>
<jsp:include page="./public/head.jsp"></jsp:include>
<body>

	<div class="site-nav-bg">
		<div class="site-nav w1200">
			<p class="sn-back-home">
				<i class="layui-icon layui-icon-home"></i> <a href="<%=basePath%>">首页</a>
			</p>
			<div class="sn-quick-menu">
				<div class="login">
					<a href="<%=basePath%>/login.html">登录</a>
				</div>
				<div class="sp-cart">
					<a href="<%=basePath%>/shopCart/list">购物车</a>
				</div>
			</div>
		</div>
	</div>



	<div class="header">
		<div class="headerLayout w1200">
			<div class="headerCon">
				<h1 class="mallLogo" style="margin-top: 20px;">
					<a href="/" title="Kmall商城"> <img
						style="width: 130px; height: 48px;"
						src="https://i.loli.net/2019/07/08/5d22c114497c397275.png">
					</a>
				</h1>
				<div class="mallSearch">
					<form action="" class="layui-form" novalidate>
						<input type="text" name="title" required lay-verify="required"
							autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
						<button class="layui-btn" lay-submit lay-filter="formDemo">
							<i class="layui-icon layui-icon-search"></i>
						</button>
						<input type="hidden" name="" value="">
					</form>
				</div>
			</div>
		</div>
	</div>


	<div class="content content-nav-base shopcart-content">
		<div class="main-nav">
			<div class="inner-cont0">
				<div class="inner-cont1 w1200">
					<div class="inner-cont2">
						<a href="commodity.html" class="active">所有商品</a> <a
							href="buytoday.html">今日团购</a> <a href="information.html">母婴资讯</a>
						<a href="about.html">关于我们</a>
					</div>
				</div>
			</div>
		</div>
		<div class="banner-bg w1200">
			<h3>夏季清仓</h3>
			<p>宝宝被子、宝宝衣服3折起</p>
		</div>
		<div class="cart w1200">
			<div class="cart-table-th">
				<div class="th th-chk">
					<div class="select-all">
						<div class="cart-checkbox">
							<input class="check-all check" id="allCheckked" type="checkbox"
								value="true">
						</div>
						<label>&nbsp;&nbsp;全选</label>
					</div>
				</div>
				<div class="th th-item">
					<div class="th-inner">商品</div>
				</div>
				<div class="th th-price">
					<div class="th-inner">单价</div>
				</div>
				<div class="th th-amount">
					<div class="th-inner">数量</div>
				</div>
				<div class="th th-sum">
					<div class="th-inner">小计</div>
				</div>
				<div class="th th-op">
					<div class="th-inner">操作</div>
				</div>
			</div>
			<c:choose>
				<c:when test="${_cart.goodsMap.size()>0}">
					<div class="OrderList">
						<div class="order-content" id="list-cont">
							<ul class="item-content layui-clear">
								<li class="th th-chk">
									<div class="select-all">
										<div class="cart-checkbox">
											<input class="CheckBoxShop check" id="" type="checkbox"
												num="all" name="select-all" value="true">
										</div>
									</div>
								</li>

								<c:forEach items="${_cart.goodsMap}" var="gs">
									<li class="th th-item">
										<div class="item-cont">
											<a href="javascript:;"><img src="${gs.value.getImage()}"
												alt=""></a>
											<div class="text">
												<div class="title">${gs.value.getTitle()}</div>
												<p>${gs.value.getSellPoint()}</p>
											</div>
										</div>
									</li>
									<li class="th th-price"><span class="th-su">${gs.value.getPrice()}</span></li>
									<li class="th th-amount">
										<div class="box-btn layui-clear">
											<div class="less layui-btn">-</div>
											<input class="Quantity-input" type="text" name="" value="1"
												disabled="disabled">
											<div class="add layui-btn">+</div>
										</div>
									</li>
									<li class="th th-sum"><span class="sum"></span></li>
									<li class="th th-op"><span class="dele-btn">删除</span></li>
								</c:forEach>
							</ul>

						</div>
					</div>
				</c:when>

				<c:otherwise>
						<h1 style="text-align: center;color: red;">购物车空空如也..请你先加入商品到购物车··</h1>
				</c:otherwise>
			</c:choose>




			<div class="FloatBarHolder layui-clear">
				<div class="th th-chk">
					<div class="select-all">
						<div class="cart-checkbox">
							<input class="check-all check" id="" name="select-all"
								type="checkbox" value="true">
						</div>
						<label>&nbsp;&nbsp;已选<span class="Selected-pieces">0</span>件
						</label>
					</div>
				</div>
				<div class="th batch-deletion">
					<span class="batch-dele-btn">批量删除</span>
				</div>
				<div class="th Settlement">
					<button class="layui-btn">结算</button>
				</div>
				<div class="th total">
					<p>
						应付：<span class="pieces-total">0</span>
					</p>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		layui.config({
			base : '<%=basePath%>
		/static/js/' //你存放新模块的目录，注意，不是layui的模块目录
				})
				.use(
						[ 'mm', 'jquery', 'element', 'car' ],
						function() {
							var mm = layui.mm, $ = layui.$, element = layui.element, car = layui.car;
							car.init()
						});
	</script>
</body>
</html>