<%-- 网页编码采用简体中文--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- 包含连接数据库的文件--%>
<%@ include file="../jdbc-ddjbxx.jsp"%>


<%-- 获得浏览器提交的指定参数"编号"的值 --%>
<%
String bianhao=request.getParameter("bianhao");
String sql="delete from ddjbxx where bianhao ='"+bianhao+"'";

s.executeUpdate(sql);
s.close();
c.close();

out.print("<script language='javascript'>alert('编号 "+bianhao+"的基本信息已成功删除!');window.location.href='ddcx.jsp';</script>");
%>
