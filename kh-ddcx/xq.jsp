<%-- ��ҳ������ü�������--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- �����������ݿ���ļ�--%>
<%@ include file="../jdbc-ddjbxx.jsp" %>


<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��������</title>
<!--������Ϣ�����ļ�-->
<script src="../ddjbxx.js" language="javascript"></script>
<!--������ʽ�ļ�-->
<link rel =stylesheet href="../ddjbxx.css" type=text/css>
</head>

<%
// ��ȡ�������
String bianhao = request.getParameter("bianhao");%>

<%
// ��ѯ������Ϣ
String sql = "SELECT * FROM ddjbxx WHERE bianhao='" + bianhao + "'";
ResultSet rs = s.executeQuery(sql);

// ��������洢��ѯ���
String louyu = "";
String xiangxidizhi = "";
String paisongrenyuan = "";
String paisongriqi = "";
String sfsd = "";
String jine = "";
String kehuxingming = "";
String kehudianhua = "";
String beizhu = "";
String fywzb = "";
String jtshyp = "";
String xxsc = "";

// ����������������ݸ�ֵ������
while (rs.next()) {
    louyu = rs.getString("louyu");
    xiangxidizhi = rs.getString("xiangxidizhi");
    paisongrenyuan = rs.getString("paisongrenyuan");
    paisongriqi = rs.getString("paisongriqi");
    sfsd = rs.getString("sfsd");
    jine = rs.getString("jine");
    kehuxingming = rs.getString("kehuxingming");
    kehudianhua = rs.getString("kehudianhua");
    beizhu = rs.getString("beizhu");
    fywzb = rs.getString("fywzb");
    jtshyp = rs.getString("jtshyp");
    xxsc = rs.getString("xxsc");
}

rs.close();
s.close();
c.close();

%>



<body>
<form name="form1" onsubmit="return checkform()" method="POST" action="zxddgl.jsp">
	<div align="center">
		<table border="1" width="69%" cellspacing="1" cellpadding="3" height="484" bordercolor="#000000" id="table">
			<tr>
				<td colspan="2" bgcolor="#E6F7FF">
				<font face="����ϸ��">
				<a href="../index.htm"><font size="4">��ҳ</font></a><font size="4">-&gt;<a href="lsddcx.jsp">������ʷ������ѯ</a>-&gt;��������</font></font></td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center" id="s1"><font face="΢���ź�">�������Ķ���</font></td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center"><font id="s3"> </font><font face="΢���ź�">
				<font size="2">����**��Ϊ������Ŀ��</font></font></font></td>
			</tr>
			<tr>
				<td width="33%" id="s2" style="text-align: center">
				<font face="΢���ź�">��Ʒ</font></td>
				<td width="65%"><font face="΢���ź�">��Ʒ���鼰ѡ��</font></td>
			</tr>
			
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">�������ʰ�
				        </font>
				        <p style="text-align: center">
				            <font face="΢���ź�">
				            <img border="0" src="image/fywpb.gif" width="223" height="154">
				        	</font>
				        </p>
				    </td>
				    <td width="65%">
				        <font face="΢���ź�">���ۣ�10Ԫ/��
				        </font>
				        <p>
				            <font face="΢���ź�">����������
				            <select name="fywzb" disabled>
				                <option value="0" <%= fywzb.equals("0") ? "selected" : "" %>>0</option>
				                <option value="1" <%= fywzb.equals("1") ? "selected" : "" %>>1</option>
				                <option value="2" <%= fywzb.equals("2") ? "selected" : "" %>>2</option>
				                <option value="3" <%= fywzb.equals("3") ? "selected" : "" %>>3</option>
				                <option value="4" <%= fywzb.equals("4") ? "selected" : "" %>>4</option>
				                <option value="5" <%= fywzb.equals("5") ? "selected" : "" %>>5</option>
				            </select>
				        </font>
				        </p>
				        <p><font face="΢���ź�">�������֡�����Һ��ϴ��Һ�ȷ������ʣ��������Ľ�����ȫ��</font></p>
				    </td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">��ͥ������Ʒ
				        </font>
				        <p style="text-align: center">
				            <font face="΢���ź�">
				            <img border="0" src="image/jtshyp.gif" width="197" height="144">
				        	</font>
				        </p>
				    </td>
				    <td width="65%">
				        <font face="΢���ź�">���ۣ�10Ԫ/��
				        </font>
				        <p>
				            <font face="΢���ź�">����������
				            <select name="jtshyp" disabled>
				                <option value="0" <%= jtshyp.equals("0") ? "selected" : "" %>>0</option>
				                <option value="1" <%= jtshyp.equals("1") ? "selected" : "" %>>1</option>
				                <option value="2" <%= jtshyp.equals("2") ? "selected" : "" %>>2</option>
				                <option value="3" <%= jtshyp.equals("3") ? "selected" : "" %>>3</option>
				                <option value="4" <%= jtshyp.equals("4") ? "selected" : "" %>>4</option>
				                <option value="5" <%= jtshyp.equals("5") ? "selected" : "" %>>5</option>
				            </select>
				        </font>
				        </p>
				        <p><font face="΢���ź�">���������ͥ�������Ʒ����ϴ��Һ��ϴ�ྫ��ֽ��ȡ�</font></p>
				    </td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">����ʳ��
				        </font>
				        <p style="text-align: center">
				            <font face="΢���ź�">
				            <img border="0" src="image/xxsc.gif" width="227" height="162">
				        	</font>
				        </p>
				    </td>
				    <td width="65%">
				        <font face="΢���ź�">���ۣ�10Ԫ/��
				        </font>
				        <p>
				            <font face="΢���ź�">����������
				            <select name="xxsc" disabled>
				                <option value="0" <%= xxsc.equals("0") ? "selected" : "" %>>0</option>
				                <option value="1" <%= xxsc.equals("1") ? "selected" : "" %>>1</option>
				                <option value="2" <%= xxsc.equals("2") ? "selected" : "" %>>2</option>
				                <option value="3" <%= xxsc.equals("3") ? "selected" : "" %>>3</option>
				                <option value="4" <%= xxsc.equals("4") ? "selected" : "" %>>4</option>
				                <option value="5" <%= xxsc.equals("5") ? "selected" : "" %>>5</option>
				            </select>
				        </font>
				        </p>
				        <p><font face="΢���ź�">��������ʳ�ģ���������ˮ�����߲˺����࣬��Ӧ������ʳ�ġ�</font></p>
				    </td>
				</tr>


                <tr>
                    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">�������</font></td>
                    <td width="65%"><font face="΢���ź�"><input type="text" name="bianhao" size="20" value="<%=bianhao%>"  readonly></font></td>
                </tr>
                <tr>
					<td width="33%" id=s2 style="text-align: center">
					<font face="΢���ź�">������Ա</font></td>
					<td width="65%">
					<font face="΢���ź�">
					<input type="checkbox" disabled name="paisongrenyuan" value="ʯ��001"<%= paisongrenyuan.indexOf("ʯ��001")!=-1?"checked":"" %>>ʯ��001 
					<input type="checkbox" disabled name="paisongrenyuan" value="ŷ����002"<%= paisongrenyuan.indexOf("ŷ����002")!=-1?"checked":"" %>>ŷ����002 
					<input type="checkbox" disabled name="paisongrenyuan" value="ë����003"<%= paisongrenyuan.indexOf("ë����003")!=-1?"checked":"" %>>ë����003</font></td>
				</tr>

				<tr>
				    <td width="33%" id="s2" style="text-align: center" >
					<font face="΢���ź�">��������</font></td>
				    <td width="65%"><font face="΢���ź�"><input type="text" name="paisongriqi" size="20" value="<%=paisongriqi%>" readonly></font></td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">�Ƿ��ʹ�</font></td>
				    <td width="65%">
						<font face="΢���ź�">
						<input type="radio" value="���ʹ�" name="sfsd" <%=sfsd.equals("���ʹ�") ? "checked disabled" : "disabled"%>>���ʹ�
						<input type="radio" value="δ�ʹ�" name="sfsd" <%=sfsd.equals("δ�ʹ�") ? "checked disabled" : "disabled"%>>δ�ʹ�
				     
						</font>
				    </td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">�����ܽ��</font></td>
				    <td width="65%"><font face="΢���ź�">���ƣ�<input type="text" name="jine" size="11" readonly value="<%=jine%>"  readonly>Ԫ</font></td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">�ͻ�����</font></td>
				    <td width="65%"><font face="΢���ź�"><input type="text" name="kehuxingming" size="20" value="<%=kehuxingming%>" readonly></font></td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">�ͻ��绰</font></td>
				    <td width="65%"><font face="΢���ź�"><input type="text" name="kehudianhua" size="20" value="<%=kehudianhua%>" readonly></font></td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">��ϸ��ַ</font></td>
				    <td width="65%">
				        <font face="΢���ź�">
				        <select size="1" name="louyu" disabled>
				            <option value="1" <%=louyu.equals("1") ? "selected" : ""%>>1</option>
				            <option value="2" <%=louyu.equals("2") ? "selected" : ""%>>2</option>
				            <option value="3" <%=louyu.equals("3") ? "selected" : ""%>>3</option>
				            <option value="4" <%=louyu.equals("4") ? "selected" : ""%>>4</option>
				            <option value="5" <%=louyu.equals("5") ? "selected" : ""%>>5</option>
				        </select>��
				        <select size="1" name="xiangxidizhi" disabled>
				            <option value="101" <%=xiangxidizhi.equals("101") ? "selected" : ""%>>101</option>
				            <option value="201" <%=xiangxidizhi.equals("201") ? "selected" : ""%>>201</option>
				            <option value="301" <%=xiangxidizhi.equals("301") ? "selected" : ""%>>301</option>
				            <option value="401" <%=xiangxidizhi.equals("401") ? "selected" : ""%>>401</option>
				            <option value="501" <%=xiangxidizhi.equals("501") ? "selected" : ""%>>501</option>
				        </select>��
				    </font>
				    </td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="΢���ź�">��ע</font></td>
				    <td width="65%"><font face="΢���ź�"><textarea rows="8" name="beizhu" cols="35" readonly><%=beizhu%></textarea></font><font id="s3" face="΢���ź�">������20������</font></td>
				</tr>			
			<tr>
				    <td width="98%" id="s2" colspan="2">
					<p style="text-align: center">
					<font face="΢���ź�">
					<input type="button" value="����" name="B1" onclick="history.back();">
				    </font>
				    </tr>
		</table>
	</div>
	<p>��</p>
</form>
</body>
</html>