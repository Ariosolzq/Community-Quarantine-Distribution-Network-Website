<%-- 网页编码采用简体中文--%>
<%@page contentType="text/html;charset=GB2312"%>
<%-- 包含连接数据库的文件 include指令用于指明网页中包含的其他文件，以实现代码重用--%>
<%@ include file="../jdbc-ddjbxx.jsp" %>


<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>查询订单基本信息</title>
<!--引入样式文件-->
<link rel="stylesheet" href="../ddjbxx.css" type="text/css">
</head>

<body>

<form method="POST" action="ddcx.jsp">
	<table border="1" width="100%">
		<tr>
			<td colspan="3" bgcolor="#E6F7FF"><font face="华文细黑"><a href="../index.htm">
			<font size="4">主页</font></a><font size="4">-&gt;订单查询/派送/删除</font></font></td>
		</tr>
		<tr>
			<td colspan="3" id="s1">
			<p align="center"><font face="微软雅黑">请输入查询条件</font></td>
		</tr>
		<tr>
			<td width="36%"><font face="微软雅黑">查询方式：<input type="radio" value="bianhao" checked name="fangshi">订单编号 
			<input type="radio" value="kehuxingming" name="fangshi">客户姓名</font></td>
			<td width="49%"><font face="微软雅黑">查询条件：<input type="text" name="tiaojian" size="20"></font></td>
			<td width="13%"><font face="微软雅黑"><input type="submit" value="提交" name="B1"></font></td>
		</tr>
	</table>
	<table border="1" width="100%" id="table1">
		<tr>
			<td><font size="2" face="华文细黑">
			温馨提示：管理员点击“提交”按钮可以查询所有订单；本查询为模糊查询，可以只输入姓氏或手机尾号。</font></td>
		</tr>
	</table>
</form>

<table border="1" width="100%">
	<tr>
		<td colspan="15">
		<p align="center"><font face="微软雅黑"><b>满足查询条件的订单基本信息</b></font></td>
	</tr>
	<tr>
		<td align="center"><font face="微软雅黑">订单编号</font></td>
		<td align="center"><font face="微软雅黑">楼宇</font></td>
		<td align="center"><font face="微软雅黑">详细地址</font></td>
		<td align="center"><font face="微软雅黑">派送人员</font></td>
		<td align="center"><font face="微软雅黑">派送日期</font></td>
		<td align="center"><font face="微软雅黑">客户姓名</font></td>
		<td align="center"><font face="微软雅黑">客户电话</font></td>
		<td align="center"><font face="微软雅黑">防疫物资包</font></td>
		<td align="center"><font face="微软雅黑">家庭生活用品</font></td>
		<td align="center"><font face="微软雅黑">新鲜食材</font></td>
		<td align="center"><font face="微软雅黑">订单总金额</font></td>
		<td align="center"><font face="微软雅黑">是否送达</font></td>
		<td align="center"><font face="微软雅黑">备注</font></td>
		<td align="center"><font face="微软雅黑">订单派送</font></td>
		<td align="center"><font face="微软雅黑">订单删除</font></td>
	</tr>
	
	<!-- 在这儿添加查询数据库信息的JSP 脚本 -->
	<%
	
	//设置中文编码方式
	request.setCharacterEncoding("gb2312");
	
	//接收查询方式的值
	String fangshi=request.getParameter("fangshi");
	
	//接收查询条件的值
	String tiaojian=request.getParameter("tiaojian");
	
	//执行查询SQL语句
	String sql = "select * from ddjbxx where " + fangshi + " like '%" + tiaojian + "%'";
	ResultSet rs = s.executeQuery(sql);
	
	//得到所有满足条件的查询结果
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
		
		// 检查字符串是否以逗号结尾
		if (paisongrenyuan != null && paisongrenyuan.endsWith(",")) {
		  // 去掉最后一个字符
		  paisongrenyuan = paisongrenyuan.substring(0, paisongrenyuan.length() - 1);
		}

		
		 %>
		 
	<!--在这儿显示查询出的数据库中的信息-->
	<tr>
		<td align="center"><font face="微软雅黑"><%= bianhao %></font></td>
		<td align="center"><font face="微软雅黑"><%= louyu %></font></td>
		<td align="center"><font face="微软雅黑"><%= xiangxidizhi %></font></td>
		<td align="center"><font face="微软雅黑"><%= paisongrenyuan %></font></td>
		<td align="center"><font face="微软雅黑"><%= paisongriqi %></font></td>
		<td align="center"><font face="微软雅黑"><%= kehuxingming %></font></td>
		<td align="center"><font face="微软雅黑"><%= kehudianhua %></font></td>
		<td align="center"><font face="微软雅黑"><%= fywzb %></font></td>
		<td align="center"><font face="微软雅黑"><%= jtshyp %></font></td>
		<td align="center"><font face="微软雅黑"><%= xxsc %></font></td>
		<td align="center"><font face="微软雅黑"><%= jine %></font></td>
		<td align="center" style="color: <%= sfsd.equals("未送达") ? "red" : "inherit" %>"> 
		<font face="微软雅黑"> <%= sfsd %></font></td>
		<td align="center"><font face="微软雅黑"><%= beizhu %></font></td>
		<td align="center"><font face="微软雅黑"><a href="ddps.jsp?bianhao=<%= bianhao %>">派送</a></font></td>
		<td align="center"><font face="微软雅黑"><a href="ddsc.jsp?bianhao=<%= bianhao %>">删除</a></font></td>
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