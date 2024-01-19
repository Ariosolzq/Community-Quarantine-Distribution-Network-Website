<%-- 网页编码采用简体中文--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- 包含连接数据库的文件--%>
<%@ include file="../jdbc-ddjbxx.jsp" %>


<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>订单详情</title>
<!--引入信息检验文件-->
<script src="../ddjbxx.js" language="javascript"></script>
<!--引入样式文件-->
<link rel =stylesheet href="../ddjbxx.css" type=text/css>
</head>

<%
// 获取订单编号
String bianhao = request.getParameter("bianhao");%>

<%
// 查询订单信息
String sql = "SELECT * FROM ddjbxx WHERE bianhao='" + bianhao + "'";
ResultSet rs = s.executeQuery(sql);

// 定义变量存储查询结果
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

// 遍历结果集，将数据赋值给变量
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
				<font face="华文细黑">
				<a href="../index.htm"><font size="4">主页</font></a><font size="4">-&gt;<a href="lsddcx.jsp">个人历史订单查询</a>-&gt;订单详情</font></font></td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center" id="s1"><font face="微软雅黑">这是您的订单</font></td>
			</tr>
			<tr>
				<td colspan="2">
				<p align="center"><font id="s3"> </font><font face="微软雅黑">
				<font size="2">（带**号为必填项目）</font></font></font></td>
			</tr>
			<tr>
				<td width="33%" id="s2" style="text-align: center">
				<font face="微软雅黑">商品</font></td>
				<td width="65%"><font face="微软雅黑">商品详情及选购</font></td>
			</tr>
			
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">防疫物资包
				        </font>
				        <p style="text-align: center">
				            <font face="微软雅黑">
				            <img border="0" src="image/fywpb.gif" width="223" height="154">
				        	</font>
				        </p>
				    </td>
				    <td width="65%">
				        <font face="微软雅黑">单价：10元/份
				        </font>
				        <p>
				            <font face="微软雅黑">订购份数：
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
				        <p><font face="微软雅黑">包含口罩、消毒液、洗手液等防疫物资，保障您的健康安全。</font></p>
				    </td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">家庭生活用品
				        </font>
				        <p style="text-align: center">
				            <font face="微软雅黑">
				            <img border="0" src="image/jtshyp.gif" width="197" height="144">
				        	</font>
				        </p>
				    </td>
				    <td width="65%">
				        <font face="微软雅黑">单价：10元/份
				        </font>
				        <p>
				            <font face="微软雅黑">订购份数：
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
				        <p><font face="微软雅黑">包含各类家庭生活必需品，如洗衣液、洗洁精、纸巾等。</font></p>
				    </td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">新鲜食材
				        </font>
				        <p style="text-align: center">
				            <font face="微软雅黑">
				            <img border="0" src="image/xxsc.gif" width="227" height="162">
				        	</font>
				        </p>
				    </td>
				    <td width="65%">
				        <font face="微软雅黑">单价：10元/份
				        </font>
				        <p>
				            <font face="微软雅黑">订购份数：
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
				        <p><font face="微软雅黑">当季新鲜食材，包含各类水果、蔬菜和肉类，供应季节性食材。</font></p>
				    </td>
				</tr>


                <tr>
                    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">订单编号</font></td>
                    <td width="65%"><font face="微软雅黑"><input type="text" name="bianhao" size="20" value="<%=bianhao%>"  readonly></font></td>
                </tr>
                <tr>
					<td width="33%" id=s2 style="text-align: center">
					<font face="微软雅黑">派送人员</font></td>
					<td width="65%">
					<font face="微软雅黑">
					<input type="checkbox" disabled name="paisongrenyuan" value="石朴001"<%= paisongrenyuan.indexOf("石朴001")!=-1?"checked":"" %>>石朴001 
					<input type="checkbox" disabled name="paisongrenyuan" value="欧瑞榆002"<%= paisongrenyuan.indexOf("欧瑞榆002")!=-1?"checked":"" %>>欧瑞榆002 
					<input type="checkbox" disabled name="paisongrenyuan" value="毛彦哲003"<%= paisongrenyuan.indexOf("毛彦哲003")!=-1?"checked":"" %>>毛彦哲003</font></td>
				</tr>

				<tr>
				    <td width="33%" id="s2" style="text-align: center" >
					<font face="微软雅黑">派送日期</font></td>
				    <td width="65%"><font face="微软雅黑"><input type="text" name="paisongriqi" size="20" value="<%=paisongriqi%>" readonly></font></td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">是否送达</font></td>
				    <td width="65%">
						<font face="微软雅黑">
						<input type="radio" value="已送达" name="sfsd" <%=sfsd.equals("已送达") ? "checked disabled" : "disabled"%>>已送达
						<input type="radio" value="未送达" name="sfsd" <%=sfsd.equals("未送达") ? "checked disabled" : "disabled"%>>未送达
				     
						</font>
				    </td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">订单总金额</font></td>
				    <td width="65%"><font face="微软雅黑">共计：<input type="text" name="jine" size="11" readonly value="<%=jine%>"  readonly>元</font></td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">客户姓名</font></td>
				    <td width="65%"><font face="微软雅黑"><input type="text" name="kehuxingming" size="20" value="<%=kehuxingming%>" readonly></font></td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">客户电话</font></td>
				    <td width="65%"><font face="微软雅黑"><input type="text" name="kehudianhua" size="20" value="<%=kehudianhua%>" readonly></font></td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">详细地址</font></td>
				    <td width="65%">
				        <font face="微软雅黑">
				        <select size="1" name="louyu" disabled>
				            <option value="1" <%=louyu.equals("1") ? "selected" : ""%>>1</option>
				            <option value="2" <%=louyu.equals("2") ? "selected" : ""%>>2</option>
				            <option value="3" <%=louyu.equals("3") ? "selected" : ""%>>3</option>
				            <option value="4" <%=louyu.equals("4") ? "selected" : ""%>>4</option>
				            <option value="5" <%=louyu.equals("5") ? "selected" : ""%>>5</option>
				        </select>栋
				        <select size="1" name="xiangxidizhi" disabled>
				            <option value="101" <%=xiangxidizhi.equals("101") ? "selected" : ""%>>101</option>
				            <option value="201" <%=xiangxidizhi.equals("201") ? "selected" : ""%>>201</option>
				            <option value="301" <%=xiangxidizhi.equals("301") ? "selected" : ""%>>301</option>
				            <option value="401" <%=xiangxidizhi.equals("401") ? "selected" : ""%>>401</option>
				            <option value="501" <%=xiangxidizhi.equals("501") ? "selected" : ""%>>501</option>
				        </select>室
				    </font>
				    </td>
				</tr>
				<tr>
				    <td width="33%" id="s2" style="text-align: center">
					<font face="微软雅黑">备注</font></td>
				    <td width="65%"><font face="微软雅黑"><textarea rows="8" name="beizhu" cols="35" readonly><%=beizhu%></textarea></font><font id="s3" face="微软雅黑">不多于20个汉字</font></td>
				</tr>			
			<tr>
				    <td width="98%" id="s2" colspan="2">
					<p style="text-align: center">
					<font face="微软雅黑">
					<input type="button" value="返回" name="B1" onclick="history.back();">
				    </font>
				    </tr>
		</table>
	</div>
	<p>　</p>
</form>
</body>
</html>