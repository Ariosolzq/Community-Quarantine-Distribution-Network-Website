// ���鶩��������Ϣ��Ч�Եĺ���
function checkform() {
    // ��ȡ��Ԫ�ص�ֵ
    var kehuxingming = document.form1.kehuxingming;
    var kehudianhua = document.form1.kehudianhua;
    var beizhu = document.form1.beizhu;
    var fywzb = document.form1.fywzb.value;
    var jtshyp = document.form1.jtshyp.value;
    var xxsc = document.form1.xxsc.value;
     
    // �ж϶�����Ʒ�������Ƿ�ȫ��Ϊ0
	if (Number(fywzb) === 0 && Number(jtshyp) === 0 && Number(xxsc) === 0) {
	    alert("������ѡ��һ����Ʒ��");
	    return false;
	}

    // �жϿͻ������Ƿ�Ϊ��
	if (isempty(kehuxingming)) {
	alert("�ͻ���������Ϊ�գ�������ͻ�������");
	return false;
	}
	
	//���� checkLength() �����жϿͻ����������Ƿ񲻶���4������
	if(checkLength(kehuxingming,4))	{
	alert ("�ͻ��������Ȳ�����4������,����������!")
	document.form1.kehuxingming.focus()
	return false
	}
	
	//���� isChinese () �����жϿͻ����������Ƿ�Ϊ����
	if(isChinese(kehuxingming))	{
	alert ("�ͻ���������Ϊ����,����������!")
	document.form1.kehuxingming.focus()
	return false
	}	
	
	// �жϿͻ���ϵ�绰�Ƿ�Ϊ��
	if (isempty(kehudianhua)) {
	alert("�ͻ���ϵ�绰����Ϊ�գ���������ϵ�绰��");
	return false;
	}

	//���� checkNumber() �����жϿͻ���ϵ�绰�����Ƿ�Ϊ11λ
	if(checkNumber(kehudianhua,11)){
	alert ("�ͻ���ϵ�绰����Ϊ11λ,����������!")
	document.form1.kehudianhua.focus()
	return false
	}

	//���� isposintger() �����жϿͻ���ϵ�绰�����Ƿ�Ϊ����
	if(isposintger(kehudianhua)==false){
	alert ("�ͻ���ϵ�绰����Ϊ����,����������!")
	document.form1.kehudianhua.focus()
	return false
	}
	
	if(beizhu.value!="" )
	{//����isChinese () �����жϱ�ע�����Ƿ�Ϊ����
	if(isChinese(beizhu ))
		{alert ("��ע����Ϊ����,����������!")
		form1.beizhu.focus()
		return false
		}
	//���� checkLength() �����жϱ�ע�����Ƿ񲻶���20������
	if(checkLength(beizhu ,20))
		{alert ("��ע���Ȳ��ܶ���20���ַ�,����������!")
		document.form1.beizhu.focus()
		return false
		}
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
