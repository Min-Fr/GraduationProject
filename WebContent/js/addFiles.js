var GUANG_DONG=new Array("广州","湛江");
var GUANG_XI=new Array("南宁","桂林");


//选择下拉框
function select(selectId,name) {
    document.getElementById(selectId).innerText=name;
    if (name=="其他"){
        if (selectId=="huowufenlei"){
            document.getElementById("other1").removeAttribute("readOnly");
        }else if(selectId=="huowuzhuangtai"){
            document.getElementById("other2").removeAttribute("readOnly");
        }else if(selectId=="cangkufenlei"){
            document.getElementById("other3").removeAttribute("readOnly");
        }else if(selectId=="sheng"){
            removeCityElement("ul");
            document.getElementById("shi").innerText="选择市/县";
            document.getElementById("other4").removeAttribute("readOnly");
        }
    }else{
        var doc;
        if (selectId=="huowufenlei"){
            doc=document.getElementById("other1");
        }else if(selectId=="huowuzhuangtai"){
            doc=document.getElementById("other2");
        }else if (selectId=="cangkufenlei"){
            doc=document.getElementById("other3");
        }else if (selectId=="sheng"){
            document.getElementById("shi").innerText="选择市/县";
            document.getElementById("other4").setAttribute("readOnly",true);
            document.getElementById("other4").value="";
            //添加城市
            addCityElement("ul",name);
            return;
        }else if(selectId=="shi"){
            document.getElementById("other4").removeAttribute("readOnly");
        }
        doc.value="";
        doc.setAttribute("readOnly",true);
    }
}

//添加市/县下拉框内容
function addCityElement(obj,name) {
    removeCityElement(obj);
    var ul=document.getElementById(obj);
    var citys=new Array();
    if(name=="广东"){
        citys=GUANG_DONG;
    }else if(name=="广西"){
        citys=GUANG_XI;
    }else{
        return;
    }
    for(var i=0;i<citys.length;i++){
        //生成<li>
        var li=document.createElement("li");
        li.setAttribute("id","li"+i);
        //生成<a>
        var a=document.createElement("a");
        //设置 a 属性
        a.setAttribute("onclick",'select("'+'shi","'+citys[i]+'")');
        a.innerHTML=citys[i];
        li.appendChild(a);
        ul.appendChild(li);
    }
}

//删除上次添加的市/县
function removeCityElement(obj) {
    var ul=document.getElementById(obj);
    if(ul.childNodes.length==1){
        return;
    }
    var len=ul.childNodes.length;
    for(var i=0;i<len;i++){
        ul.removeChild(ul.childNodes[0]);
    }
}
