<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script language="javascript">
function start(){
	you = 100;
    devil = 100;
    var result = document.getElementById("result");
    result.innerHTML="start";
}
function heal(){
rd = Math.floor(Math.random()*30);
var tmp = 0;tmp = you+15;
	you = you+15-rd;
	    var result = document.getElementById("result");
    if(you>0&&devil>0){
    result.innerHTML="你使用了一个血瓶，血量变为"+tmp+"<br/>"+"然而大魔王趁你不备发动攻击<br/>现在你的血量变为"+you+" 大魔王血量为"+devil;}
    else if(you<0&&devil>0){
    result.innerHTML="你输了，哈哈，辣鸡";}
    else if(you>0&&devil<0){
    result.innerHTML="你赢了，然而并没有什么奖励";}
    else{
    result.innerHTML="你和大魔王同归于尽了，大家当做无事发生过";
    }
	
}
function attack(){//传入表单参数
rd1 = Math.floor(Math.random()*30);
rd2 = Math.floor(Math.random()*30);
    you = you-rd1;
    devil = devil- rd2;
    var result = document.getElementById("result");
    if(you>0&&devil>0){
    result.innerHTML="你上去就是一拳，大魔王剩下血量为"+devil+"<br/>"+"愤怒的大魔王反击，你剩下的血量为"+you;}
    else if(you<0&&devil>0){
    result.innerHTML="你输了，哈哈，辣鸡";}
    else if(you>0&&devil<0){
    result.innerHTML="你赢了，然而并没有什么奖励";}
    else{
    result.innerHTML="你和大魔王同归于尽了，大家当做无事发生过";
    }
    }
    </script>
    
    <title>决斗吧大魔王</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
  </head>
  
  <body style="background-image:url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1491491962000&di=a101e2033883077242ea21ad64dc3444&imgtype=0&src=http%3A%2F%2Fh7.86.cc%2Fwalls%2F20160729%2F1920x1200_88f5b02af13e733.jpg)" >
    <div class="container">
    <div class="col-md-12 column" >
			<ul class="nav nav-tabs">
				<li style="font-size:20px;">
					 <a href="index.jsp">首页</a>
				</li>
				<li style="font-size:20px;">
					 <a href="login.jsp">登陆</a>
				</li>
				<li style="font-size:20px;">
					 <a href="#">商店</a>
				</li>
				
			</ul>
		</div>
    <div class="col-md-6 colum">
    <div class="jumbotron">

    <h1>拯救地球<br />消灭大魔王</h1>
            <p>
                某一天，你在上课的路上遇到一只扬言要毁灭世界的大魔王
            </p>
            <button class="btn btn-primary btn-large" onClick="start()"  >开始</button>
            <br/>
            <button class="btn btn-primary btn-large" onClick="attack()" >攻击</button>
            <button class="btn btn-primary btn-large" onClick="heal()" >回血</button>
            <br/>
            <span id="result">
            
            </span>

    </div>
    </div>
    </div>
    <br>
  </body>
</html>
