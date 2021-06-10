var list =new Array();
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
    http_request.open('GET',url,true);      //创建与服务器的链接
    http_request.send(null);        //向服务器发送请求
}

function getRequest(){
    if (http_request.readyState == 4){      //判断请求状态
        //alert("请求码："+http_request.status);
        if (http_request.status == 200){      //请求成功，开始处理返回结果
            alert("响应内容："+http_request.responseText);  //设置提示内容
        }else{
            alert("请求页面有错误！");      //请求页面有错误
        }
    }
}

function buttonOnClick() {
    var url=createUrl();
    alert(url);
    createRequest(url);
}

//创建请求用的url
function createUrl() {
    var name =document.getElementById("name").value;    //名字
    var weight =document.getElementById("weight").value;    //重量
    var huowufenlei =document.getElementById("huowufenlei").innerHTML;  //货物分类
    var huowuzhuangtai =document.getElementById("huowuzhuangtai").innerHTML;    //货物状态
    var cangkufenlei =document.getElementById("cangkufenlei").innerHTML;    //仓库分类
    //速度
    var speed;  //速度
    var obj = document.getElementsByName("speed");
    for(var i=0; i<obj.length; i ++){
        if(obj[i].checked){
            //alert(obj[i].value);
            speed=obj[i].value;
        }
    }
    var jiName =document.getElementById("jiName").value;    //寄件人名字
    var jiPhone =document.getElementById("jiPhone").value;  //寄件人电话
    var sheng =document.getElementById("sheng").innerHTML;  //出发省
    var shi =document.getElementById("shi").innerHTML;  //出发市
    var qu =document.getElementById("qu").innerHTML;    //出发区
    var other4 =document.getElementById("other4").value;    //出发街道
    var shouName =document.getElementById("shouName").value;    //收件人名字
    var shouPhone =document.getElementById("shouPhone").value;  //收件人电话
    var shengT =document.getElementById("shengT").innerHTML;    //收件省
    var shiT =document.getElementById("shiT").innerHTML;    //收件市
    var quT =document.getElementById("quT").innerHTML;  //收件区
    var other5 =document.getElementById("other5").value;    //收件街道
    // alert(name+","+weight+","+huowufenlei+","+huowuzhuangtai+","+cangkufenlei+","+speed+","+jiName+","+jiPhone+","+sheng+","+shi+","+qu+","+other4+","+shouName+","+shouPhone+","+shengT+","+shiT+","+quT+","+other5);
    var url='AddItemServlet?name='+name+"&weight="+weight+"&huowufenlei="+huowufenlei+
    "&huowuzhuangtai="+huowuzhuangtai+"&cangkufenlei="+cangkufenlei+"&speed="+speed+
    "&jiName="+jiName+"&jiPhone="+jiPhone+"&sheng="+sheng+
    "&shi="+shi+"&qu="+qu+"&other4="+other4+"&shouName="+shouName+
    "&shouPhone="+shouPhone+"&shengT="+shengT+"&shiT="+shiT+"&quT="+quT+
    "&other5="+other5;
    return url;
}

