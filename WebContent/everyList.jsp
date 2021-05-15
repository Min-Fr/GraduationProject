<!DOCTYPE html>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=utf-8"%>
	<meta charset="UTF-8">
    <title>添加订单</title>
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- addFiles -->
    <script src="js/everyList.js"></script>
</head>

<body>
<!-- container section start -->
<section id="container" class="">


    <header class="header dark-bg">
        <div class="toggle-nav">
            <div class="icon-reorder" data-original-title="Toggle Navigation" data-placement="bottom"></div>
        </div>

        <!--logo start-->
        <a href="home.html" class="logo">XF <span class="lite">物流</span></a>
        <!--logo end-->

        <div class="top-nav notification-row">
            <!-- notificatoin dropdown start-->
            <ul class="nav pull-right top-menu">

                <!-- task notificatoin start -->
                <li id="task_notificatoin_bar" class="dropdown">
                    <ul class="dropdown-menu extended tasks-bar">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                            <p class="blue">You have 6 pending letter</p>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Design PSD </div>
                                    <div class="percent">90%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                        <span class="sr-only">90% Complete (success)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">
                                        Project 1
                                    </div>
                                    <div class="percent">30%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                        <span class="sr-only">30% Complete (warning)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Digital Marketing</div>
                                    <div class="percent">80%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        <span class="sr-only">80% Complete</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Logo Designing</div>
                                    <div class="percent">78%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                        <span class="sr-only">78% Complete (danger)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Mobile App</div>
                                    <div class="percent">50%</div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar"  role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                        <span class="sr-only">50% Complete</span>
                                    </div>
                                </div>

                            </a>
                        </li>
                        <li class="external">
                            <a href="#">See All Tasks</a>
                        </li>
                    </ul>
                </li>
                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="username">Jenifer Smith</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top">
                            <a href="#"><i class="icon_profile"></i> My Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                        </li>
                        <li>
                            <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
                        </li>
                        <li>
                            <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                        </li>
                        <li>
                            <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                        </li>
                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
        </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
        <div id="sidebar">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">
                <li class="active">
                    <a class="" href="home.html">
                        <i class="icon_house_alt"></i>
                        <span>首页</span>
                    </a>
                </li>
                <li class="active">
                    <a class="" href="EveryList.html">
                        <i class="icon_house_alt"></i>
                        <span>货单列表</span>
                    </a>
                </li>
                <li class="active">
                    <a class="" href="addFiles.html">
                        <i class="icon_house_alt"></i>
                        <span>添加货单</span>
                    </a>
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!--overview start-->
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-laptop"></i> 货单列表</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="home.html">Home</a></li>
                        <li><i class="fa fa-laptop"></i>货单列表</li>
                    </ol>
                </div>
            </div>

            <!--列表-->
            <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    <!--  search form start -->
                                    <div class="btn-group">
                                        <a id="huowufenlei" class="btn btn-default">选择货物分类</a>
                                        <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                        <a class="jiange"></a>
                                        <a class="btn-group"></a>
                                        <ul class="dropdown-menu">
                                            <li><a onclick='select("huowufenlei","普通货物")'>普通货物</a></li>
                                            <li><a onclick='select("huowufenlei","易碎")'>易碎</a></li>
                                            <li><a onclick='select("huowufenlei","液体")'>液体</a></li>
                                            <li><a onclick='select("huowufenlei","保鲜类食品")'>保鲜类食品</a></li>
                                            <li><a onclick='select("huowufenlei","生物活体")'>生物活体</a></li>
                                            <li><a onclick='select("huowufenlei","文件")'>文件</a></li>
                                            <li class="divider"></li>
                                            <li><a onclick='select("huowufenlei","不选择分类")'>不选择分类</a></li>
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <a id="baosun" class="btn btn-default">选择报损</a>
                                        <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                        <a class="jiange"></a>
                                        <a class="btn-group">
                                            <input id="so" class="form-control" placeholder="输入名称Enter搜索" type="search" onkeypress="search()">
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a onclick='select("baosun","完好")'>完好</a></li>
                                            <li><a onclick='select("baosun","破损")'>破损</a></li>
                                            <li class="divider"></li>
                                            <li><a onclick='select("baosun","不选择报损")'>不选择报损</a></li>
                                        </ul>
                                    </div>
                                        <!--  search form end -->
                                </header>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>订单编号</th>
                                            <th>货物名称</th>
                                            <th>货物分类</th>
                                            <th>货物重量</th>
                                            <th>仓库分类</th>
                                            <th>状态</th>
                                            <th>报损</th>
                                            <th>发货地址</th>
                                            <th>收货地址</th>
                                        </tr>
                                        </thead>
                                        <tbody  id="table">
                                            <script>
                                            	getItemsFromService()
                                                createTable()
                                            </script>
                                        </tbody>
                                    </table>
                                </div>

                            </section>
                        </div>
                    </div>
            <!--列表结束-->

        </section>
    </section>
    <!--main content end-->
</section>
<!-- container section start -->

</body>
</html>