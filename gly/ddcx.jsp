<%-- ��ҳ������ü�������--%>
<%@page contentType="text/html;charset=GB2312"%>
<%-- �����������ݿ���ļ� includeָ������ָ����ҳ�а����������ļ�����ʵ�ִ�������--%>
<%@ include file="../jdbc-ddjbxx.jsp" %>


<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ѯ����������Ϣ</title>
<!--������ʽ�ļ�-->
<link rel="stylesheet" href="../ddjbxx.css" type="text/css">
</head>

<body>

<form method="POST" action="ddcx.jsp">
	<table border="1" width="100%">
		<tr>
			<td colspan="3" bgcolor="#E6F7FF"><font face="����ϸ��"><a href="../index.htm">
			<font size="4">��ҳ</font></a><font size="4">-&gt;������ѯ/����/ɾ��</font></font></td>
		</tr>
		<tr>
			<td colspan="3" id="s1">
			<p align="center"><font face="΢���ź�">�������ѯ����</font></td>
		</tr>
		<tr>
			<td width="36%"><font face="΢���ź�">��ѯ��ʽ��<input type="radio" value="bianhao" checked name="fangshi">������� 
			<input type="radio" value="kehuxingming" name="fangshi">�ͻ�����</font></td>
			<td width="49%"><font face="΢���ź�">��ѯ������<input type="text" name="tiaojian" size="20"></font></td>
			<td width="13%"><font face="΢���ź�"><input type="submit" value="�ύ" name="B1"></font></td>
		</tr>
	</table>
	<table border="1" width="100%" id="table1">
		<tr>
			<td><font size="2" face="����ϸ��">
			��ܰ��ʾ������Ա������ύ����ť���Բ�ѯ���ж���������ѯΪģ����ѯ������ֻ�������ϻ��ֻ�β�š�</font></td>
		</tr>
	</table>
</form>

<table border="1" width="100%">
	<tr>
		<td colspan="15">
		<p align="center"><font face="΢���ź�"><b>�����ѯ�����Ķ���������Ϣ</b></font></td>
	</tr>
	<tr>
		<td align="center"><font face="΢���ź�">�������</font></td>
		<td align="center"><font face="΢���ź�">¥��</font></td>
		<td align="center"><font face="΢���ź�">��ϸ��ַ</font></td>
		<td align="center"><font face="΢���ź�">������Ա</font></td>
		<td align="center"><font face="΢���ź�">��������</font></td>
		<td align="center"><font face="΢���ź�">�ͻ�����</font></td>
		<td align="center"><font face="΢���ź�">�ͻ��绰</font></td>
		<td align="center"><font face="΢���ź�">�������ʰ�</font></td>
		<td align="center"><font face="΢���ź�">��ͥ������Ʒ</font></td>
		<td align="center"><font face="΢���ź�">����ʳ��</font></td>
		<td align="center"><font face="΢���ź�">�����ܽ��</font></td>
		<td align="center"><font face="΢���ź�">�Ƿ��ʹ�</font></td>
		<td align="center"><font face="΢���ź�">��ע</font></td>
		<td align="center"><font face="΢���ź�">��������</font></td>
		<td align="center"><font face="΢���ź�">����ɾ��</font></td>
	</tr>
	
	<!-- �������Ӳ�ѯ���ݿ���Ϣ��JSP �ű� -->
	<%
	
	//�������ı��뷽ʽ
	request.setCharacterEncoding("gb2312");
	
	//���ղ�ѯ��ʽ��ֵ
	String fangshi=request.getParameter("fangshi");
	
	//���ղ�ѯ������ֵ
	String tiaojian=request.getParameter("tiaojian");
	
	//ִ�в�ѯSQL���
	String sql = "select * from ddjbxx where " + fangshi + " like '%" + tiaojian + "%'";
	ResultSet rs = s.executeQuery(sql);
	
	//�õ��������������Ĳ�ѯ���
	while (rs.next()){
		String bianhao = rs.getString("bianhao");
		String louyu = rs.getString("louyu");
		String xiangxidizhi = rs.getString("xiangxidizhi");
		String paisongrenyuan = rs.getString("paisongrenyuan");
		String paisongriqi = rs.getString(5);
		String kehuxingming = rs.getString("kehuxingming");
		String kehudianhua = rs.getString("kehudianhua");
		String fywzb = rs.getString("fywzb");
		String jtshyp = rs.getString("jtshyp");
		String xxsc = rs.getString("xxsc");
		String jine = rs.getString("jine");
		String sfsd = rs.getString("sfsd");
		String beizhu = rs.getString(13);
		
		// ����ַ����Ƿ��Զ��Ž�β
		if (paisongrenyuan != null && paisongrenyuan.endsWith(",")) {
		  // ȥ�����һ���ַ�
		  paisongrenyuan = paisongrenyuan.substring(0, paisongrenyuan.length() - 1);
		}

		
		 %>
		 
	<!--�������ʾ��ѯ�������ݿ��е���Ϣ-->
	<tr>
		<td align="center"><font face="΢���ź�"><%= bianhao %></font></td>
		<td align="center"><font face="΢���ź�"><%= louyu %></font></td>
		<td align="center"><font face="΢���ź�"><%= xiangxidizhi %></font></td>
		<td align="center"><font face="΢���ź�"><%= paisongrenyuan %></font></td>
		<td align="center"><font face="΢���ź�"><%= paisongriqi %></font></td>
		<td align="center"><font face="΢���ź�"><%= kehuxingming %></font></td>
		<td align="center"><font face="΢���ź�"><%= kehudianhua %></font></td>
		<td align="center"><font face="΢���ź�"><%= fywzb %></font></td>
		<td align="center"><font face="΢���ź�"><%= jtshyp %></font></td>
		<td align="center"><font face="΢���ź�"><%= xxsc %></font></td>
		<td align="center"><font face="΢���ź�"><%= jine %></font></td>
		<td align="center" style="color: <%= sfsd.equals("δ�ʹ�") ? "red" : "inherit" %>"> 
		<font face="΢���ź�"> <%= sfsd %></font></td>
		<td align="center"><font face="΢���ź�"><%= beizhu %></font></td>
		<td align="center"><font face="΢���ź�"><a href="ddps.jsp?bianhao=<%= bianhao %>">����</a></font></td>
		<td align="center"><font face="΢���ź�"><a href="ddsc.jsp?bianhao=<%= bianhao %>">ɾ��</a></font></td>
	</tr>
	
	<%
	}
	rs.close();
	s.close(); 
	c.close(); 
	%>
</table>

</body>

</html>