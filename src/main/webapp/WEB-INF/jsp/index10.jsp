<%--
  Created by IntelliJ IDEA.
  User: 黄律
  Date: 2018/12/19
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>前台展示</title>
    <meta name="keywords" content="Nifty,nifty bootstrap,nifty admin,nifty admin 下载,nifty admin 中文文档，Nifty 模板" />
    <meta name="description" content="nifty admin 一款非常优秀的bootstrap后台管理html UI" />
    <!--STYLESHEET-->
    <!--=================================================-->
    <!--Open Sans Font [ OPTIONAL ]-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet'
          type='text/css'>
    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="http://www.niftyadmin.cn/html/nifty/css/bootstrap.min.css" rel="stylesheet">
    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="http://www.niftyadmin.cn/html/nifty/css/nifty.min.css" rel="stylesheet">
    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="http://www.niftyadmin.cn/html/nifty/css/demo/nifty-demo-icons.min.css" rel="stylesheet">
    <!--Demo [ DEMONSTRATION ]-->
    <link href="http://www.niftyadmin.cn/html/nifty/css/demo/nifty-demo.min.css" rel="stylesheet">
    <!--DataTables [ OPTIONAL ]-->
    <link href="http://www.niftyadmin.cn/html/nifty/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="http://www.niftyadmin.cn/html/nifty/plugins/datatables/extensions/Responsive/css/responsive.dataTables.min.css"
          rel="stylesheet">
    <!--JAVASCRIPT-->
    <!--=================================================-->
    <!--Pace - Page Load Progress Par [OPTIONAL]-->
    <link href="http://www.niftyadmin.cn/html/nifty/plugins/pace/pace.min.css" rel="stylesheet">
    <script src="http://www.niftyadmin.cn/html/nifty/plugins/pace/pace.min.js"></script>
    <!--jQuery [ REQUIRED ]-->
    <script src="http://www.niftyadmin.cn/html/nifty/js/jquery.min.js"></script>
    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="http://www.niftyadmin.cn/html/nifty/js/bootstrap.min.js"></script>
    <!--NiftyJS [ RECOMMENDED ]-->
    <script src="http://www.niftyadmin.cn/html/nifty/js/nifty.min.js"></script>
    <!--=================================================-->
    <!--Demo script [ DEMONSTRATION ]-->
    <script src="http://www.niftyadmin.cn/html/nifty/js/demo/nifty-demo.min.js"></script>
    <!--DataTables [ OPTIONAL ]-->
    <script src="http://www.niftyadmin.cn/html/nifty/plugins/datatables/media/js/jquery.dataTables.js"></script>
    <script src="http://www.niftyadmin.cn/html/nifty/plugins/datatables/media/js/dataTables.bootstrap.js"></script>
    <script src="http://www.niftyadmin.cn/html/nifty/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
    <!--DataTables Sample [ SAMPLE ]-->
    <script src="http://www.niftyadmin.cn/html/nifty/js/demo/tables-datatables.js"></script>
    <!--=================================================


</head>
<!--TIPS-->
    <!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->
<body>
<div id="container" class="effect aside-float aside-bright mainnav-lg">
    <header id="navbar">
        <div id="navbar-container" class="boxed">
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand">
                    <img src="http://www.niftyadmin.cn/html/nifty/img/logo.png" alt="Nifty Logo" class="brand-icon">
                    <div class="brand-title">
                        <span class="brand-text">Nifty</span>
                    </div>
                </a>
            </div>
            <div class="navbar-content clearfix">
                <ul class="nav navbar-top-links pull-left">
                    <li class="tgl-menu-btn">
                        <a class="mainnav-toggle" href="#">
                            <i class="demo-pli-view-list"></i>
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-top-links pull-right"> <!--Language selector-->
                    <li id="dropdown-user" class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">
                                <span class="ic-user pull-right">
                                    <!--<img class="img-circle img-user media-object" src="http://www.niftyadmin.cn/html/nifty/img/profile-photos/1.png" alt="Profile Picture">-->
                                    <i class="demo-pli-male"></i>
                                </span>
                            <div class="username hidden-xs">薛杰</div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="aside-toggle navbar-aside-icon">
                            <i class="pci-ver-dots"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </header>
    <div class="boxed">
        <div id="content-container">
            <div id="page-content">
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            用户管理展示</h3>
                    </div>
                    <div class="panel-body">
                        <table class="footable table table-stripped" data-page-size="8" data-filter=#filter id="mytable">
                            <thead>
                            <tr>
                                <th>学生ID</th>
                                <th>姓名</th>
                                <th data-hide="phone,tablet">性别</th>
                                <th data-hide="phone,tablet">年龄</th>
                                <th data-hide="phone,tablet">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${page.list}" var="p">
                                <tr class="gradeX">
                                    <td>${p.uid}</td>
                                    <td>
                                            ${p.uname}
                                    </td>
                                    <td>${p.usex}</td>
                                    <td class="center">${p.uage}</td>
                                    <td class="center">${p.uvip}</td>
                                </tr>
                            </c:forEach>


                            </tbody>

                        </table>
                        <%--style="position: absolute;left: 720px;top: 880px;"--%>
                        <div >
                            <%@ include file="pageFile.jsp" %>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!--左侧导航-->
        <nav id="mainnav-container">
            <div id="mainnav">

                <!--Menu-->
                <!--================================-->
                <div id="mainnav-menu-wrap">
                    <div class="nano">
                        <div class="nano-content">

                            <!--Profile Widget-->
                            <!--================================-->
                            <div id="mainnav-profile" class="mainnav-profile">
                                <div class="profile-wrap text-center">
                                    <div class="pad-btm">
                                        <img class="img-circle img-md" src="http://www.niftyadmin.cn/html/nifty/img/profile-photos/1.png" alt="Profile Picture">
                                    </div>
                                    <a href="#profile-nav" class="box-block" data-toggle="collapse" aria-expanded="false">
                                            <span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
                                        <p class="mnp-name">薛杰用户</p>
                                        <span class="mnp-desc">xuejie@themeon.net</span>
                                    </a>
                                </div>
                            </div>
                            <ul id="mainnav-menu" class="list-group">

                                <li class="active-sub">
                                    <a href="index.html" >
                                        <i class="demo-psi-home"></i>
                                        <span class="menu-title">用户管理展示</span>
                                    </a>
                                </li>

                                <li >
                                    <a href="#" >
                                        <i class="demo-psi-receipt-4"></i>
                                        <span class="menu-title">其他</span>
                                        <i class="arrow"></i>
                                    </a>

                                    <!--Submenu-->
                                    <ul class="collapse in">
                                        <li><a href="tables-static.html">其他</a></li>
                                        <li><a href="tables-bootstrap.html">其他</a></li>
                                        <li class="active-link"><a href="tables-datatable.html">其他</a></li>
                                        <li><a href="tables-footable.html">其他</a></li>

                                    </ul>
                                </li>

                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>
</body>
</html>

