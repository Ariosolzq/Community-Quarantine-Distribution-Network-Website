<%@ page contentType="text/html;charset=GB2312" %>
<%@ include file="../jdbc-ddjbxx.jsp" %>

<%
// �������ı��뷽ʽ����֤�����ַ��ܹ���ȷ����ͽ���
request.setCharacterEncoding("gb2312");


//ȡ���ύ��������Ա������Ϣ,�ȱ�����������,Ȼ��ת��Ϊ��","���ӵ��ַ���
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

// ���¶�����Ϣ
String updateSql = "UPDATE ddjbxx SET  paisongrenyuan='" + paisongrenyuan2 + "',paisongriqi='" + paisongriqi + "', sfsd='" + sfsd + "' WHERE bianhao='" + bianhao + "'";
s.executeUpdate(updateSql);

// �ر�����
s.close();
c.close();

out.print("<script language='javascript'>alert('�������" + bianhao + "����Ϣ�ѳɹ��޸�!');window.location.href='ddcx.jsp';</script>");
%>
