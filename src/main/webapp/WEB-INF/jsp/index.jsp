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
<title>Kmall商城</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/static/css/main.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/static/css/layui.css">
<script type="text/javascript" src="<%=basePath%>/static/js/layui.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">

</head>
<body id="list-cont">
	<div class="site-nav-bg">
		<div class="site-nav w1200">
			<p class="sn-back-home">
				<i class="layui-icon layui-icon-home"></i> <a href="#">首页</a>
			</p>
			<div class="sn-quick-menu">
				<div class="login">
					<a href="login.html">去登录</a>
				</div>
				<div class="sp-cart">
					<a href="shopcart.html">购物车</a><span>2</span>
				</div>
			</div>
		</div>
	</div>


	<div class="header">
		<div class="headerLayout w1200">
			<div class="headerCon">
				<h1 class="mallLogo" style="margin-top: 20px;">
					<a href="#" title="Kmall商城"> <img
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


	<div class="content">
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
		<div class="category-con">
			<div class="category-inner-con w1200">
				<div class="category-type">
					<h3>全部分类</h3>
				</div>
				<div class="category-banner">
					<div class="w1200">
						<div class="layui-carousel" id="test10">
							<div carousel-item="">
								<div>
									<img src="https://i.loli.net/2019/07/07/5d21ea191597a55270.jpg">
								</div>
								<div>
									<img src="https://i.loli.net/2019/07/07/5d21e5385400260611.jpg">
								</div>
								<div>
									<img src="https://i.loli.net/2019/07/07/5d21e6c1434bc13500.png">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="floors">
				<div class="sk">
					<div class="sk_inner w1200">
						<div class="sk_hd">
							<a href="javascript:;"> <img
								src="<%=basePath%>/static/img/s_img1.jpg">
							</a>
						</div>
						<div class="sk_bd">
							<div class="layui-carousel" id="test1">
								<div carousel-item>
									<div class="item-box">
										<c:forEach items="${HOT}" var="hot" varStatus="i" begin="0"
											end="3">
											<div class="item">
												<a href="javascript:;"><img src="${hot.getImage()}"></a>
												<div class="title">${hot.getTitle()}</div>
												<div class="price">
													<span>${hot.getPrice()}</span>¥
												</div>
											</div>
										</c:forEach>
									</div>
									<div class="item-box">
										<c:forEach items="${HOT}" var="hot" varStatus="i" begin="4"
											end="7">
											<div class="item">
												<a href="javascript:;"><img src="${hot.getImage()}"></a>
												<div class="title">${hot.getTitle()}</div>
												<div class="price">
													<span>${hot.getPrice()}</span>¥
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>




			<div class="product-list-box" id="product-list-box">
				<div class="product-list-cont w1200">
					<h4>更多推荐</h4>
					<div class="product-item-box layui-clear">
						<c:forEach items="${Rlist}" var="r" varStatus="i" begin="0"
							end="9">
						<div class="list-item">
							<a href="javascript:;"><img style="width:160px;height: 160px;" src="${r.getImage()}"></a>
							<p>${r.getTitle()}</p>
							<span>￥${r.getPrice()}</span>
						</div>
						</c:forEach>
						
						
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
<script type="text/javascript">

layui.config({
    base: '<%=basePath%>/static/js/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','carousel'],function(){
      var carousel = layui.carousel,
     mm = layui.mm;
     var option = {
        elem: '#test1'
        ,width: '100%' //设置容器宽度
        ,arrow: 'always'
        ,height:'298' 
        ,indicator:'none'
      }
   	//图片轮播
     carousel.render({
       elem: '#test10'
       ,width: '100%'
       ,height: '100%'
       ,interval: 5000,
       indicator:'none'
     });
      carousel.render(option);
      // 模版引擎导入
     // var ins = carousel.render(option);
     // var html = demo.innerHTML;
     // var listCont = document.getElementById('list-cont');
     // // console.log(layui.router("#/about.html"))
     //  mm.request({
     <%-- //url: '<%=basePath%>/static/json/index.json', --%>
			//    success : function(res){
			//      console.log(res)
			//      listCont.innerHTML = mm.renderHtml(html,res)
			//      ins.reload(option);
			//    },
			//    error: function(res){
			//      console.log(res);
			//    }
			//  })

		});
	</script>
</html>