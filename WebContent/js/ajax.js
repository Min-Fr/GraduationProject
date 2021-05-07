

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
            window.location.href=http_request.responseText;
        }else{
            alert("请求页面有错误！");      //请求页面有错误
        }
    }
}




