<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Kmall商城登录</title>
<jsp:include page="./public/head.jsp"></jsp:include>
<body>

	<div class="site-nav-bg">
		<div class="site-nav w1200">
			<p class="sn-back-home">
				<i class="layui-icon layui-icon-home"></i> <a href="/">首页</a>
			</p>
			<div class="sn-quick-menu">
				<div class="login">
					<a href="<%=basePath%>/register.html">去注册</a>
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


	<div class="content content-nav-base  login-content">
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
		<div class="login-bg">
			<div class="login-cont w1200">
				<div class="form-box">
					<form class="layui-form" action="">
						<legend>用户登录</legend>
						<div class="layui-form-item">
							<div class="layui-inline but-div">
								<div class="layui-input-inline">
									<i class="layui-icon layui-icon-username icon-input"></i> <input
										type="text" name="email" id="email"
										lay-verify="required|email" placeholder="请输入邮箱"
										autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-inline but-div">
								<div class="layui-input-inline">
									<i class="layui-icon layui-icon-password icon-input"></i> <input
										type="password" name="password" id="password"
										lay-verify="required" placeholder="请输入密码" autocomplete="off"
										class="layui-input">
								</div>
							</div>
							<div class="layui-inline veri-code">
								<div class="layui-input-inline">

									<input id="pnum" type="text" name="pnum" lay-verify="required"
										placeholder="请输入验证码" autocomplete="off" class="layui-input">
									<img class="code-img" src="<%=basePath%>/captcha/img" />
								</div>
							</div>
						</div>
						<div class="layui-form-item login-btn">
							<div class="layui-input-block">
								<button class="layui-btn" lay-submit="" lay-filter="demo1"
									onclick="return false">登录</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="./public/footer.jsp"></jsp:include>

	<script type="text/javascript">
   	layui.config({
      base: '<%=basePath%>/static/js/util' //你存放新模块的目录，注意，不是layui的模块目录
		}).use([ 'jquery', 'form' ], function() {
			var $ = layui.$, form = layui.form;

		
		
    });
    $(function(){
        $('.code-img').click(function () { 
            $(this).attr('src', "<%=basePath%>/captcha/img?" + Math.floor(Math.random() * 99999999));
			})
	})
	</script>

</body>
</html>