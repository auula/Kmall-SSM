<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>商品详情|${ginfo.getTitle()}</title>
<jsp:include page="./public/head.jsp"></jsp:include>
<body>

	<div class="site-nav-bg">
		<div class="site-nav w1200">
			<p class="sn-back-home">
				<i class="layui-icon layui-icon-home"></i> <a href="/">首页</a>
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

	<div class="content content-nav-base datails-content">
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
		<div class="data-cont-wrap w1200">
			<div class="crumb">
				<a href="javascript:;">产品详情</a> <span>></span> <a href="javascript:;">电子产品</a>
				<span>></span> <a href="javascript:;">笔记本</a>
			</div>
			<div class="product-intro layui-clear">
				<div class="preview-wrap">
					<a href="javascript:;"><img style="width: 400px;height: 400px;"
						src="${ginfo.getImage()}"></a>
				</div>
				<div class="itemInfo-wrap">
					<div class="itemInfo">
						<div class="title">
							<h4>${ginfo.getSellPoint()}</h4>
		
						</div>
						<div class="summary">
							<p class="reference">
								<span>参考价</span>
								<del>￥${ginfo.getPrice()*2}</del>
							</p>
							<p class="activity">
								<span>活动价</span><strong class="price"><i>￥</i>${ginfo.getPrice()}</strong>
							</p>
							<p class="address-box">
								<span>送&nbsp;&nbsp;&nbsp;&nbsp;至</span><strong class="address">江西&nbsp;&nbsp;南昌&nbsp;&nbsp;东湖区</strong>
							</p>
						</div>
						<div class="choose-attrs">
							
							<div class="number layui-clear">
								<span class="title">数&nbsp;&nbsp;&nbsp;&nbsp;量</span>
								<div class="number-cont">
									<span class="cut btn">-</span><input
										onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
										onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
										maxlength="4" type="" name="" value="1"><span
										class="add btn">+</span>
								</div>
							</div>
						</div>
						<div class="choose-btns">
							<!-- <button class="layui-btn layui-btn-primary purchase-btn">立刻购买</button> -->
							<button class="layui-btn  layui-btn-danger car-btn">
								<i class="layui-icon layui-icon-cart-simple"></i>加入购物车
							</button>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<jsp:include page="./public/footer.jsp"></jsp:include>
	<script type="text/javascript">
		layui.config({
			base :  "<%=basePath%>/static/js/" //你存放新模块的目录，注意，不是layui的模块目录
		}).use([ 'mm', 'jquery' ], function() {
			var mm = layui.mm, $ = layui.$;
			var cur = $('.number-cont input').val();
			$('.number-cont .btn').on('click', function() {
				if ($(this).hasClass('add')) {
					cur++;
				} else {
					if (cur > 1) {
						cur--;
					}
				}
				$('.number-cont input').val(cur)
			})

		});
	</script>

</body>
</html>