<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${error}</title>
    <link rel="stylesheet" href="<%=basePath%>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>/static/css/404.css">
    <script src="<%=basePath%>/static/js/404.js"></script>

</head>

<body>
    <div class="error">
        <div class="container-floud">
            <div class="col-xs-12 ground-color text-center">
                <div class="container-error-404">
                    <div class="clip">
                        <div class="shadow">
                            <span class="digit thirdDigit"></span>
                        </div>
                    </div>
                    <div class="clip">
                        <div class="shadow">
                            <span class="digit secondDigit"></span>
                        </div>
                    </div>
                    <div class="clip">
                        <div class="shadow">
                            <span class="digit firstDigit"></span>
                        </div>
                    </div>
                    <div class="msg">OH!
                        <span class="triangle"></span>
                    </div>
                </div>
                <h2 class="h1">${error}</h2>
                <p>
                    <a class="tohome" href="">返回首页</a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>