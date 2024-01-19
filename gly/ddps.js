// 检验订单基本信息有效性的函数
function checkform() {
    // 获取表单元素的值
    var paisongriqi = document.form1.paisongriqi;
    var sfsd = document.form1.sfsd;
    var paisongrenyuan = document.form1.paisongrenyuan;

    // 判断送达日期是否为空
    if (isempty(paisongriqi)) {
        alert("派送日期不能为空，请输入派送日期！");
        return false;
    }

    // 判断派送人员是否为空
    var isPaisongrenyuanSelected = false;
    for (var i = 0; i < paisongrenyuan.length; i++) {
        if (paisongrenyuan[i].checked) {
            isPaisongrenyuanSelected = true;
            break;
        }
    }
    if (!isPaisongrenyuanSelected) {
        alert("请安排派送人员！");
        return false;
    }
    
    // 调用 isdate() 函数判断派送日期格式是否正确
    if (isdate(paisongriqi) !== true) {
        alert(isdate(paisongriqi));
        document.form1.paisongriqi.focus();
        return false;
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

//验证日期格式是否正确，数据是否有效//
function isdate(object){
	var date=object.value
	var char1 =date.charAt(4)//charAt() 方法返回字符串中指定索引（下标）处的字符
	var char2 =date.charAt(7)
	var day1 =date.substring(8,10) //substring() 方法从头到尾（不包括）提取字符。
	var lenth =day1.length
	var message,flag
	flag=0
	
	  if (date.length != 10) { // 检测日期字符串的长度是否为10
	    message="派送日期请按YYYY-MM-DD格式输入数字！"
	    return message // 返回错误信息
	  }
	
	for(var j=0;j<4;j++){
		var cha3 =date.charAt(j)
		if (isNaN(cha3)){
			message="派送日期请按YYYY-MM-DD格式输入数字！"
			return message}
		}
		
	for(var k=5;k<7;k++){
		var char4 =date.charAt(k)
		if (isNaN(char4)){
			message="派送日期请按YYYY-MM-PD格式输入数字！"
			return message}
		}
			
	for(var l=8;l<10;l++){
		var char5 =date.charAt(l)
		if (isNaN(char5)){
			message="派送日期请按YYYY-MM-PD格式输入数字！"
			return message}
		}
		
		
	if (char1 != "-" || char2 != "-" || lenth < "2")
		{
		message="派送日期请按YYYY-MM-DD格式输入数字！"
		return message}
	else{
		var year=date.substring(0,4)
		var month=date.substring(5,7)
		var day=date.substring(8,10)
		var bj=0
		var message
		if (year<"1900"||year>"2023"){
			message="年份应在1900-2023之间，"
			bj=1
			}
		if (month<"01"||month>"12"){
			if (bj==1){
				message=message+"月份应在01-12之间，"}
			else{
				message="月份应在01-12之间，"
				bj=1}
			}
		if (day<"01"||day >"31"){
			if(bj==1){
				message=message+"日期应在01-31之间,"}
			else{
				message="日期应在01-31之间，"
				bj=1}
			}
		if(bj==1){
			message="派送日期中"+message+"请重新输入！"
			return message
			}
		if((month=="04"||month=="06"||month=="09"|month=="11")&& day>"30"){
			message="派送日期中"+month+"是小月，日期应在01-30之间！"
			bj=1
			return message
			}
	 // 检查闰年2月份是否超过28天，闰年的判断条件是能被4整除但不能被100整除，或者能被400整除，否则会错误判断1900年为平年
    // 检查平年2月份是否超过28天，放在前面
	if (month == "02" && day > "28" && (year % 4 != 0 || year % 100 == 0) && year % 400 != 0) {
	  message = "派送日期中平年2月份不超过28天！";
	  bj = 1;
	  return message;
	}

	// 检查闰年2月份是否超过29天，放在后面
	if (month == "02" && day > "29" && ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)) {
	  message = "派送日期中闰年2月份不超过29天！";
	  bj = 1;
	  return message;
	}


	if(bj==0)
	return true
	}
}