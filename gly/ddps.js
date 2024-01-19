// ���鶩��������Ϣ��Ч�Եĺ���
function checkform() {
    // ��ȡ��Ԫ�ص�ֵ
    var paisongriqi = document.form1.paisongriqi;
    var sfsd = document.form1.sfsd;
    var paisongrenyuan = document.form1.paisongrenyuan;

    // �ж��ʹ������Ƿ�Ϊ��
    if (isempty(paisongriqi)) {
        alert("�������ڲ���Ϊ�գ��������������ڣ�");
        return false;
    }

    // �ж�������Ա�Ƿ�Ϊ��
    var isPaisongrenyuanSelected = false;
    for (var i = 0; i < paisongrenyuan.length; i++) {
        if (paisongrenyuan[i].checked) {
            isPaisongrenyuanSelected = true;
            break;
        }
    }
    if (!isPaisongrenyuanSelected) {
        alert("�밲��������Ա��");
        return false;
    }
    
    // ���� isdate() �����ж��������ڸ�ʽ�Ƿ���ȷ
    if (isdate(paisongriqi) !== true) {
        alert(isdate(paisongriqi));
        document.form1.paisongriqi.focus();
        return false;
    }
    
    // ����У����
    return true;
}

//�ж϶���ֵ�Ƿ�Ϊ��
function isempty(object){
	var str = object.value
	if (str == null || str =="")
		return true
	else
		return false
	}
	
	
//��������Ƿ�Ϊ����
function isChinese(object){
	var i
	for( i = 0;i< object.value.length;i++){
		if( object.value.charCodeAt(i)>= 32 && object.value.charCodeAt(i) <= 128)
		return true
	}
return false
}


//��������Ƿ�Ϊ����
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


//����绰���볤��
function checkNumber(object,n){
	if(object.value.length==n)
		return false
	else
		return true
}

//�����ַ�������
function checkLength(object,n){
	if (object.value.length==0)
		return false
	if (object.value.length<=n)
		return false
	else
		return true
}

//��֤���ڸ�ʽ�Ƿ���ȷ�������Ƿ���Ч//
function isdate(object){
	var date=object.value
	var char1 =date.charAt(4)//charAt() ���������ַ�����ָ���������±꣩�����ַ�
	var char2 =date.charAt(7)
	var day1 =date.substring(8,10) //substring() ������ͷ��β������������ȡ�ַ���
	var lenth =day1.length
	var message,flag
	flag=0
	
	  if (date.length != 10) { // ��������ַ����ĳ����Ƿ�Ϊ10
	    message="���������밴YYYY-MM-DD��ʽ�������֣�"
	    return message // ���ش�����Ϣ
	  }
	
	for(var j=0;j<4;j++){
		var cha3 =date.charAt(j)
		if (isNaN(cha3)){
			message="���������밴YYYY-MM-DD��ʽ�������֣�"
			return message}
		}
		
	for(var k=5;k<7;k++){
		var char4 =date.charAt(k)
		if (isNaN(char4)){
			message="���������밴YYYY-MM-PD��ʽ�������֣�"
			return message}
		}
			
	for(var l=8;l<10;l++){
		var char5 =date.charAt(l)
		if (isNaN(char5)){
			message="���������밴YYYY-MM-PD��ʽ�������֣�"
			return message}
		}
		
		
	if (char1 != "-" || char2 != "-" || lenth < "2")
		{
		message="���������밴YYYY-MM-DD��ʽ�������֣�"
		return message}
	else{
		var year=date.substring(0,4)
		var month=date.substring(5,7)
		var day=date.substring(8,10)
		var bj=0
		var message
		if (year<"1900"||year>"2023"){
			message="���Ӧ��1900-2023֮�䣬"
			bj=1
			}
		if (month<"01"||month>"12"){
			if (bj==1){
				message=message+"�·�Ӧ��01-12֮�䣬"}
			else{
				message="�·�Ӧ��01-12֮�䣬"
				bj=1}
			}
		if (day<"01"||day >"31"){
			if(bj==1){
				message=message+"����Ӧ��01-31֮��,"}
			else{
				message="����Ӧ��01-31֮�䣬"
				bj=1}
			}
		if(bj==1){
			message="����������"+message+"���������룡"
			return message
			}
		if((month=="04"||month=="06"||month=="09"|month=="11")&& day>"30"){
			message="����������"+month+"��С�£�����Ӧ��01-30֮�䣡"
			bj=1
			return message
			}
	 // �������2�·��Ƿ񳬹�28�죬������ж��������ܱ�4���������ܱ�100�����������ܱ�400���������������ж�1900��Ϊƽ��
    // ���ƽ��2�·��Ƿ񳬹�28�죬����ǰ��
	if (month == "02" && day > "28" && (year % 4 != 0 || year % 100 == 0) && year % 400 != 0) {
	  message = "����������ƽ��2�·ݲ�����28�죡";
	  bj = 1;
	  return message;
	}

	// �������2�·��Ƿ񳬹�29�죬���ں���
	if (month == "02" && day > "29" && ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)) {
	  message = "��������������2�·ݲ�����29�죡";
	  bj = 1;
	  return message;
	}


	if(bj==0)
	return true
	}
}