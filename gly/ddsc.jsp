<%-- ��ҳ������ü�������--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- �����������ݿ���ļ�--%>
<%@ include file="../jdbc-ddjbxx.jsp"%>


<%-- ���������ύ��ָ������"���"��ֵ --%>
<%
String bianhao=request.getParameter("bianhao");
String sql="delete from ddjbxx where bianhao ='"+bianhao+"'";

s.executeUpdate(sql);
s.close();
c.close();

out.print("<script language='javascript'>alert('��� "+bianhao+"�Ļ�����Ϣ�ѳɹ�ɾ��!');window.location.href='ddcx.jsp';</script>");
%>
