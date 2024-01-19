// 检验订单基本信息有效性的函数
function checkform() {
    // 获取表单元素的值
    var kehuxingming = document.form1.kehuxingming;
    var kehudianhua = document.form1.kehudianhua;
    var beizhu = document.form1.beizhu;
    var fywzb = document.form1.fywzb.value;
    var jtshyp = document.form1.jtshyp.value;
    var xxsc = document.form1.xxsc.value;
     
    // 判断订单商品订购量是否全部为0
	if (Number(fywzb) === 0 && Number(jtshyp) === 0 && Number(xxsc) === 0) {
	    alert("请至少选择一件商品！");
	    return false;
	}

    // 判断客户姓名是否为空
	if (isempty(kehuxingming)) {
	alert("客户姓名不能为空，请输入客户姓名！");
	return false;
	}
	
	//调用 checkLength() 函数判断客户姓名长度是否不多于4个汉字
	if(checkLength(kehuxingming,4))	{
	alert ("客户姓名长度不多于4个汉字,请重新输入!")
	document.form1.kehuxingming.focus()
	return false
	}
	
	//调用 isChinese () 函数判断客户姓名输入是否为汉字
	if(isChinese(kehuxingming))	{
	alert ("客户姓名必须为汉字,请重新输入!")
	document.form1.kehuxingming.focus()
	return false
	}	
	
	// 判断客户联系电话是否为空
	if (isempty(kehudianhua)) {
	alert("客户联系电话不能为空，请输入联系电话！");
	return false;
	}

	//调用 checkNumber() 函数判断客户联系电话输入是否为11位
	if(checkNumber(kehudianhua,11)){
	alert ("客户联系电话必须为11位,请重新输入!")
	document.form1.kehudianhua.focus()
	return false
	}

	//调用 isposintger() 函数判断客户联系电话输入是否为数字
	if(isposintger(kehudianhua)==false){
	alert ("客户联系电话必须为数字,请重新输入!")
	document.form1.kehudianhua.focus()
	return false
	}
	
	if(beizhu.value!="" )
	{//调用isChinese () 函数判断备注输入是否为汉字
	if(isChinese(beizhu ))
		{alert ("备注必须为汉字,请重新输入!")
		form1.beizhu.focus()
		return false
		}
	//调用 checkLength() 函数判断备注长度是否不多于20个汉字
	if(checkLength(beizhu ,20))
		{alert ("备注长度不能多于20个字符,请重新输入!")
		document.form1.beizhu.focus()
		return false
		}
	}
    
    // 返回校验结果
    return true;
}


//判断对象值是否为空
function isempty(object){
	var str = object.value
	if (str == null || str =="")
		return true
	else
		return false
	}


//判断对象值是否为空
function isempty(object){
	var str = object.value
	if (str == null || str =="")
		return true
	else
		return false
	}
	
//检测输入是否为中文
function isChinese(object){
	var i
	for( i = 0;i< object.value.length;i++){
		if( object.value.charCodeAt(i)>= 32 && object.value.charCodeAt(i) <= 128)
		return true
	}
return false
}


//检测输入是否为整数
function isposintger(object){
	var inputstr = object.value.toString( )
	var length = inputstr.length
	if (length>0){
		for (var i = 0; i < inputstr.length; i++){
			var onechar = inputstr.charAt(i)
			if( onechar<"0" || onechar>"9" ){
			return false
			}
		}
		return true
	}
	else
		return false
}


//检验电话号码长度
function checkNumber(object,n){
	if(object.value.length==n)
		return false
	else
		return true
}

//检验字符串长度
function checkLength(object,n){
	if (object.value.length==0)
		return false
	if (object.value.length<=n)
		return false
	else
		return true
}
