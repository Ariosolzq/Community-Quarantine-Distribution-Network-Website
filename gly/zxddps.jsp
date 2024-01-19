<%@ page contentType="text/html;charset=GB2312" %>
<%@ include file="../jdbc-ddjbxx.jsp" %>

<%
// 设置中文编码方式，保证中文字符能够正确传输和解析
request.setCharacterEncoding("gb2312");


//取得提交的派送人员数组信息,先保存在数组中,然后转换为用","连接的字符串
String paisongrenyuan[] =request.getParameterValues("paisongrenyuan");
String paisongrenyuan2="";
if(paisongrenyuan != null ){ 
    for(int i=0;i<paisongrenyuan.length;i++){
            paisongrenyuan2=paisongrenyuan2+paisongrenyuan[i]+",";
            }
    }


String paisongriqi = request.getParameter("paisongriqi");
String sfsd = request.getParameter("sfsd");
String bianhao = request.getParameter("bianhao");

// 更新订单信息
String updateSql = "UPDATE ddjbxx SET  paisongrenyuan='" + paisongrenyuan2 + "',paisongriqi='" + paisongriqi + "', sfsd='" + sfsd + "' WHERE bianhao='" + bianhao + "'";
s.executeUpdate(updateSql);

// 关闭连接
s.close();
c.close();

out.print("<script language='javascript'>alert('订单编号" + bianhao + "的信息已成功修改!');window.location.href='ddcx.jsp';</script>");
%>
