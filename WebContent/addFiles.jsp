<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
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
    <script src="js/addFiles.js"></script>
    <script src="js/placeLv3.js"></script>
    <script src="js/addFilesAjax.js"></script>
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
                    <h3 class="page-header"><i class="fa fa-laptop"></i> 添加货单</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="home.html">Home</a></li>
                        <li><i class="fa fa-laptop"></i>添加货单</li>
                    </ol>
                </div>
            </div>




            <!--输入内容-->
            <!--左侧内容-->
            <div class="col-lg-6">
                <section class="panel">
                    <header class="panel-heading">
                        货物基本信息
                    </header>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form">
                            <!--货物名称-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">名称</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="name" placeholder="请输入货物名称">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label">重量</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="weight" placeholder="请输入货物重量(单位：kg)">
                                </div>
                            </div>
                            <!--货物分类-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">分类</label>
                                <div class="btn-group">
                                    <a id="huowufenlei" class="btn btn-default">选择货物分类</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <a class="jiange"></a><a class="btn-group"><input type="text" class="form-control" id="other1" placeholder="其他" readonly></a>
                                    <ul class="dropdown-menu">
                                        <li><a onclick='select("huowufenlei","普通货物")'>普通货物</a></li>
                                        <li><a onclick='select("huowufenlei","易碎")'>易碎</a></li>
                                        <li><a onclick='select("huowufenlei","液体")'>液体</a></li>
                                        <li><a onclick='select("huowufenlei","保鲜类食品")'>保鲜类食品</a></li>
                                        <li><a onclick='select("huowufenlei","生物活体")'>生物活体</a></li>
                                        <li><a onclick='select("huowufenlei","文件")'>文件</a></li>
                                        <li class="divider"></li>
                                        <li><a onclick='select("huowufenlei","其他")'>其他</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--货物状态-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">状态</label>
                                <div class="btn-group">
                                    <a id="huowuzhuangtai" class="btn btn-default">选择货物状态</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <a class="jiange"></a><a class="btn-group"><input type="text" class="form-control" id="other2" placeholder="其他" readonly></a>
                                    <ul class="dropdown-menu">
                                        <li><a onclick='select("huowuzhuangtai","入库")'>入库</a></li>
                                        <li><a onclick='select("huowuzhuangtai","出库")'>出库</a></li>
                                        <li><a onclick='select("huowuzhuangtai","留仓")'>留仓</a></li>
                                        <li><a onclick='select("huowuzhuangtai","配送")'>配送</a></li>
                                        <li><a onclick='select("huowuzhuangtai","配送失败")'>配送失败</a></li>
                                        <li><a onclick='select("huowuzhuangtai","寄回")'>寄回</a></li>
                                        <li class="divider"></li>
                                        <li><a onclick='select("huowuzhuangtai","其他")'>其他</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--仓库分类-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">仓库</label>
                                <div class="btn-group">
                                    <a id="cangkufenlei" class="btn btn-default">选择仓库分类</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <a class="jiange"></a><a class="btn-group"><input type="text" class="form-control" id="other3" placeholder="其他" readonly></a>
                                    <ul class="dropdown-menu">
                                        <li><a onclick='select("cangkufenlei","普通仓库")'>普通仓库</a></li>
                                        <li><a onclick='select("cangkufenlei","保鲜仓库")'>保鲜仓库</a></li>
                                        <li><a onclick='select("cangkufenlei","冷冻仓库")'>冷冻仓库</a></li>
                                        <li><a onclick='select("cangkufenlei","航空仓库")'>航空仓库</a></li>
                                        <li><a onclick='select("cangkufenlei","活体仓库")'>活体仓库</a></li>
                                        <li><a onclick='select("cangkufenlei","私人仓库")'>私人仓库</a></li>
                                        <li class="divider"></li>
                                        <li><a onclick='select("cangkufenlei","其他")'>其他</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--货运速度-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">速度</label>
                                    <div  class="center">
                                        <input id="speed1" type="radio" name="speed" value="平邮"/>平邮
                                    </div>
                                    <div class="center">
                                        <input id="speed2" type="radio" name="speed" value="急件"/>急件
                                    </div>
                                </label>
                            </div>
                            <div class="height">
                                <a>&nbsp;</a>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
            <!--右侧内容-->
            <div class="col-lg-6">
                <section class="panel">
                    <header class="panel-heading">
                        始发地-目的地
                    </header>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form">
                            <!--寄件人-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">寄件人</label>
                                <div class="btn-group">
                                    <input id="jiName" type="text" class="btn btn-default"placeholder="寄件人姓名">
                                    <input id="jiPhone" type="text" class="btn btn-default"placeholder="寄件人电话">
                                </div>
                            </div>
                            <!--始发地-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">始发地</label>
                                <div class="btn-group">
                                    <!--省-->
                                    <a id="sheng" class="btn btn-default">省份</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <ul class="dropdown-menu" id="shengUl">
                                        <script>createProvinceList('shengUl',"sheng");</script>
                                        <li class="divider"></li>
                                        <li><a onclick='select("sheng","其他")'>其他</a></li>
                                    </ul>
                                </div>
                                <!--市-->
                                <div class="btn-group">
                                    <a id="shi" class="btn btn-default">市/县</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <ul class="dropdown-menu" id="ul">
                                    </ul>
                                </div>
                                <!--区-->
                                <div class="btn-group">
                                    <a id="qu" class="btn btn-default">区</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <ul class="dropdown-menu" id="quUl">
                                    </ul>
                                </div>
                            </div>
                                <!--详细地址-->
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">街道</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="other4" placeholder="请输入具体地址" readonly>
                                    </div>
                                </div>
                            <!--收件人-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">收件人</label>
                                <div class="btn-group">
                                    <input id="shouName" type="text" class="btn btn-default"placeholder="收件人姓名">
                                    <input id="shouPhone" type="text" class="btn btn-default"placeholder="收件人电话">
                                </div>
                            </div>
                            <!--目的地-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">目的地</label>
                                <div class="btn-group">
                                    <!--省-->
                                    <a id="shengT" class="btn btn-default">省份</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <ul class="dropdown-menu" id="shengUlT">
                                        <script>createProvinceList('shengUlT',"shengT");</script>
                                        <li class="divider"></li>
                                        <li><a onclick='select("shengT","其他")'>其他</a></li>
                                    </ul>
                                </div>
                                <!--市-->
                                <div class="btn-group">
                                    <a id="shiT" class="btn btn-default">市/县</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <ul class="dropdown-menu" id="ulT">
                                    </ul>
                                </div>
                                <!--区-->
                                <div class="btn-group">
                                    <a id="quT" class="btn btn-default">区</a>
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                                    <ul class="dropdown-menu" id="quUlT">
                                    </ul>
                                </div>
                            </div>
                            <!--详细地址-->
                            <div class="form-group">
                                <label class="col-lg-2 control-label">街道</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="other5" placeholder="请输入具体地址" readonly>
                                </div>
                            </div>
                                <!--提交-->
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button type="button" class="btn btn-danger" onclick="buttonOnClick()">提交</button>
                                    </div>
                                </div>
                        </form>
                    </div>
                </section>
            </div>
            <!--输入内容结束-->

        </section>
    </section>
    <!--main content end-->
</section>
<!-- container section start -->

</body>
</html>