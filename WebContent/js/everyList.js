//所有货物数组
var goods=new Array("0001","液体炸弹","液体","200kg","大型仓库","送达","完好","广东-广州","广东-湛江",
                     "0002","粉尘炸弹","易碎","150kg","大型仓库","送达","完好","广东-湛江","广东-广州",
                     "0003","破片手雷","易碎","151kg","大型仓库","送达","破损","广东-湛江","广东-广州");
//列表一行的长度
var SIZE=9;
//当前显示的货物数组
var someGoods=new Array();
//符合筛选的货物id的下标集合
var ids=new Array();
//标记，找到目标的时候值为1
var flag=0;
//货物分类
var fenlei="";
//货物报损
var baosun="";
//搜索框文本
var tx="";

var http_request;
function  createRequest(url) {
    http_request=false;
    if(window.XMLHttpRequest){      //非IE浏览器
        http_request=new XMLHttpRequest();      //创建XMLHttpRequest对象
    }else if(window.ActiveXObject){     //IE浏览器
        try {
            http_request=new ActiveXObject("Msxm12.XMLHTTP");      //创建XMLHttpRequest对象
        }catch (e){
            try{
                http_request=new ActiveXObject("Microsoft.XMLHTTP");     //创建XMLHttpRequest对象
            }catch (e){}
        }
    }
    if (!http_request){
        alert("不能创建XMLHttpRequest对象实例!");
        return false;
    }
    http_request.onreadystatechange=getRequest;        //调用返回结果处理函数
    http_request.open('GET',url,false);      //创建与服务器的链接
    http_request.send(null);        //向服务器发送请求
}

function getRequest(){
    if (http_request.readyState == 4){      //判断请求状态
        //alert("请求码："+http_request.status);
        if (http_request.status == 200){      //请求成功，开始处理返回结果
        	var json=http_request.responseText;
        	goods=eval('('+json+')');
            alert("响应内容："+goods);  //设置提示内容
            /*for(var obj in json){
            	alert("josn内容："+json[obj]);
        	}*/
        }else{
            alert("请求页面有错误！错误码为："+http_request.status);      //请求页面有错误
        }
    }
}

//通过ajax从后台获取列表
function getItemsFromService(){
    createRequest('getItem.jsp?');
}

//创建所有货物列表
function createTable() {
    var table=document.getElementById("table");     //要添加子标签的标签
    var tr=document.createElement("tr");        //生成<tr></tr>
    for(var i=0;i<goods.length;i++){
        var td=document.createElement("td");    //生成<td></td>
        td.innerHTML=goods[i];
        tr.appendChild(td);
        if((i+1)%SIZE == 0&&i!=0){
            table.appendChild(tr);
            tr=document.createElement("tr");
        }
    }
}

//根据ids创建筛选列表
function createSoTable() {
    deleteTable();      //删除旧表格
    if(flag==0){
        return;
    }
    var table=document.getElementById("table");     //要添加子标签的标签
    var tr=document.createElement("tr");
    for(var i=0;i<someGoods.length;i++){
        var td=document.createElement("td");    //生成<td></td>
        td.innerHTML=someGoods[i];
        tr.appendChild(td);
        if((i+1)%SIZE == 0&&i!=0){
            table.appendChild(tr);
            tr=document.createElement("tr");
        }
    }
}

//删除列表
function deleteTable() {
    var table=document.getElementById("table");
    var len=table.childNodes.length;
    for(var i=0;i<len;i++){
        table.removeChild(table.childNodes[0]);
    }
}

function setSomeGoods() {
    someGoods=[];
    if(flag==0){
        createSoTable();
        return;
    }else{
        for(var i=0;i<ids.length;i++) {
            for (var j = 0; j < SIZE; j++) {
                someGoods.push(goods[ids[i] + j]);
            }
        }
        if(ids.length==0){
            alert("已执行");
            for(var i=0;i<goods.length;i++){
                someGoods[i]=goods[i];
            }
        }
    }
    //alert(someGoods.length);
    createSoTable();//重新创建表格
}

//综合筛选
function allSearch() {
    var mark=0;
    //tx=document.getElementById("so").value;
    if(fenlei!=""){
        if(baosun==""){     //分类不为空，报损为空
            for(var i=2;i<goods.length;i=i+SIZE){
                if(goods[i].indexOf(fenlei)!=-1){
                    flag=1;
                    if(mark==0){
                        ids=[];
                        mark=1;
                    }
                    ids.push(i-2);
                }
            }
            if(mark==0){
                flag=0;
            }
        }else{          //分类不为空，报损不为空
            for(var i=2;i<goods.length;i=i+SIZE){
                if(goods[i].indexOf(fenlei)!=-1){
                    if(goods[i+4].indexOf(baosun)!=-1){
                        flag=1;
                        if(mark==0){
                            ids=[];
                            mark=1;
                        }
                        ids.push(i-2);
                    }
                }
            }
            if(mark==0){
                flag=0;
            }
        }
    }else{
        if(baosun!=""){     //分类为空，报损不为空
            for(var i=6;i<goods.length;i=i+SIZE){
                flag=1;
                if(goods[i].indexOf(baosun)!=-1){
                    if(mark==0){
                        ids=[];
                        mark=1;
                    }
                    ids.push(i-6);
                }
            }
            if(mark==0){
                flag=0;
            }
        }else{      //分类报损均为空
            //flag=0;
            ids=[];
        }
    }
    setSomeGoods();
}

//选择下拉框
function select(selectId,name) {
    document.getElementById(selectId).innerText=name;
    document.getElementById("so").value="";
    if(selectId=="huowufenlei"){
        if(name=="不选择分类"){
            name="";
        }
        fenlei=name;
    }else if(selectId=="baosun"){
        if(name=="不选择报损"){
            name="";
        }
        baosun=name;
    }
    allSearch();
}

$(function(){
    //搜索
    $('#so').bind('input propertychange', function() {
        //allSearch();
        tx=document.getElementById("so").value;
        //没有筛选条件时
        if(flag==0){
            //遍历检索是否有符合的值
            for(var i=1;i<goods.length;i=i+SIZE){
                //如果找到包含对应的值
                if(goods[i].indexOf(tx)!=-1){
                    ids.push(i-1);
                }
            }
            if(ids.length!=0){
                flag=1;
                setSomeGoods();
            }else{
                alert("未能检索到目标！");
            }
        }else{      //有筛选条件时
            ids=[];
            if(tx==""){
                setSomeGoods();
            }else{
                for(var i=1;i<someGoods.length;i=i+SIZE){
                    if(someGoods[i].indexOf(tx)!=-1){
                        ids.push(i-1);
                    }
                }
                setSomeGoods();
            }
            //alert(someGoods.length);
        }
    });
})  