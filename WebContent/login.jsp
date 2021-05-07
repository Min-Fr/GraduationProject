<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<meta charset="UTF-8">
<title>毕业设计系统登录界面</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/animation.css">
    <link rel="stylesheet" href="css/response.css">
    <script type="text/javascript" src="js/login.js"></script>
</head>
<body style="overflow: hidden">
<!--头部-->
            <header>
                <div class="header">
                    <div class="container">
                        <div class="row">
                            <div class="san col-m-hide col-s-5 col-l-hide coa">三</div>
                            <div  class="col-m-1 col-s-hide co0"><input type="image" src="img/XF_logal.png" class="co0"></div>
                            <div class="col-m-1 col-s-hide co1"><a href="#">首页</a></div>
                            <div class="col-m-1 col-s-hide co2"><a href="#">产品介绍</a></div>
                            <div class="col-m-1 col-s-hide co3"><a href="#">用户版</a></div>
                            <div class="col-m-1 col-s-hide co4" style="width: 330px"><a href="#"></a></div>
                            <div class="col-m-1 col-s-hide co5"><a href="#">手机客户端</a></div>
                            <div class="col-m-1 col-s-hide co6"><a href="#">xxxx</a></div>
                            <div class="col-m-1 col-s-hide co7"><a href="" target="_blank">xxxx</a></div>
                        </div>
                    </div>
                </div>
            </header>


<div class="out">
    <div class="box1 box">
        <div class="dyun">
            <div class="yun1"></div>
            <div class="yun2"></div>
        </div>
        <div class="zyun">
            <div class="yun1"></div>
            <div class="yun2"></div>
        </div>
        <div class="xyun">
            <div class="yun1"></div>
            <div class="yun2"></div>
        </div>

            <div class="container" style="position: relative; z-index: 5">
                <div class="row">
                    <!--左-->
                    <div class="col-m-5 col-s-hide left" style="height: 100%;">
                        <div class="left1"></div>
                        <div class="fly"></div>
                        <div class="ship"></div>
                        <div class="hill1"></div>

                    </div>

                    <!--右-->
                    <div class="col-m-5 col-s-10 right " style="height: 100%;">
                        <div class="right1">
                        	<form method="post">
	                            <div>
	                                <input name="userName" id="userName" type="text" class="userText" placeholder="请&nbsp;输&nbsp;入&nbsp;用&nbsp;户&nbsp;名" style="text-align: center"/>
	                            </div>
	                            <div>
	                                <input name="password" id="password" type="password" class="pwdText" placeholder="请&nbsp;输&nbsp;入&nbsp;密&nbsp;码" style="text-align: center"/>
	                            </div>
	                            <div>
	                                <button type="button" value="登&nbsp;录" onclick="checkUser()" class="submit">登录</button>
	                            </div>
                            </form>
                        </div>
                        
                        <div class="hill2"></div>
                        <div class="hill3"></div>
                    </div>
                </div>
            </div>
    </div>
</div>
</body>
</html>