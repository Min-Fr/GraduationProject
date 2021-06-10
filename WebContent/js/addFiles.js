
var provinceMark=0; //下拉框选中的省的数组下标
var cityMark=0; //下拉框选中的市的数组下标

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
            document.getElementById("shi").innerText="市/县";
            document.getElementById("other4").removeAttribute("readOnly");
        }else if(selectId=="sheng2"){
            removeCityElement("ul2");
            document.getElementById("shi2").innerText="市/县";
            document.getElementById("other5").removeAttribute("readOnly");
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
            document.getElementById("shi").innerText="市/县";
            document.getElementById("qu").innerText="区";
            //添加城市
            addCityElement("ul","shi",name);
            removeCityElement("quUl");
            return;
        }else if(selectId=="shi"){
            //document.getElementById("other4").removeAttribute("readOnly");
            document.getElementById("qu").innerText="区";
            addAreaElement("quUl","qu",name);
            return;
        }else if(selectId=="qu"){
            document.getElementById("other4").removeAttribute("readOnly");
            return;
        }else if(selectId=="shengT"){
            document.getElementById("shiT").innerText="市/县";
            document.getElementById("quT").innerText="区";
            //添加城市
            addCityElement("ulT","shiT",name);
            removeCityElement("quUlT");
            return;
        }else if(selectId=="shiT"){
            //document.getElementById("other4").removeAttribute("readOnly");
            document.getElementById("quT").innerText="区";
            addAreaElement("quUlT","quT",name);
            return;
        }else if(selectId=="quT"){
            document.getElementById("other5").removeAttribute("readOnly");
            return;
        }
        doc.value="";
        doc.setAttribute("readOnly",true);
    }
}

/*设置省下拉框内容
* obj 要构造的标签id
* attr 要设置属性的内容
* */
function  createProvinceList(obj,attr) {
    var ul=document.getElementById(obj);
    for(var i=0;i<provinceList.length;i++){
        //生成<li>
        var li=document.createElement("li");
        li.setAttribute("id",attr+i);
        //生成<a>
        var a=document.createElement("a");
        //设置 a 属性
        a.setAttribute("onclick",'select("'+attr+'","'+provinceList[i].name+'")');
        a.innerHTML=provinceList[i].name;
        li.appendChild(a);
        ul.appendChild(li);
    }
}

//添加市/县下拉框内容
function addCityElement(obj,attr,name) {
    removeCityElement(obj);
    //var mark=0;//数组对应省的下标
    var ul=document.getElementById(obj);
    for(var i=0;i<provinceList.length;i++){
        if(provinceList[i].name==name){
            provinceMark=i;
            break;
        }
    }
    for(var i=0;i<provinceList[provinceMark].cityList.length;i++){
        //生成<li>
        var li=document.createElement("li");
        li.setAttribute("id","li"+i);
        //生成<a>
        var a=document.createElement("a");
        //设置 a 属性
        a.setAttribute("onclick",'select("'+attr+'","'+provinceList[provinceMark].cityList[i].name+'")');
        a.innerHTML=provinceList[provinceMark].cityList[i].name;
        li.appendChild(a);
        ul.appendChild(li);
    }
}

/*
* 添加区域下拉框内容
* obj 要构造的标签的id
* attr 要构造属性的内容
* cityName 城市名字
* */
function addAreaElement(obj,attr,cityName) {
    removeCityElement(obj);
   // var mark=0;//数组对应省的下标
    //var mark2=0;//数组对应市的下标
    var ul=document.getElementById(obj);
    /*for(var i=0;i<provinceList.length;i++){
        if(provinceList[i].name==provinceName){
            mark=i;*/
            for(var j=0;j<provinceList[provinceMark].cityList.length;j++){
                if(provinceList[provinceMark].cityList[j].name==cityName){
                    cityMark=j;
                    break;
                }
            /*}
            break;
        }*/
    }
    for(var i=0;i<provinceList[provinceMark].cityList[cityMark].areaList.length;i++){
        //生成<li>
        var li=document.createElement("li");
        li.setAttribute("id","li"+i);
        //生成<a>
        var a=document.createElement("a");
        //设置 a 属性
        a.setAttribute("onclick",'select("'+attr+'","'+provinceList[provinceMark].cityList[cityMark].areaList[i]+'")');
        a.innerHTML=provinceList[provinceMark].cityList[cityMark].areaList[i];
        li.appendChild(a);
        ul.appendChild(li);
    }
}

//删除上次添加的元素
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
