<%-- ��ҳ������ü�������--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- �����������ݿ���ļ�--%>
<%@ include file="../jdbc-ddjbxx.jsp"%>

<%
//�������ı��뷽ʽ
request.setCharacterEncoding("gb2312");

//ȡ���ύ�Ķ�����Ϣ
int fywzb = Integer.parseInt(request.getParameter("fywzb"));
int jtshyp = Integer.parseInt(request.getParameter("jtshyp"));
int xxsc = Integer.parseInt(request.getParameter("xxsc"));

// �����ܽ��
double jine = (fywzb + jtshyp + xxsc) * 10;

String kehuxingming = request.getParameter("kehuxingming");
String kehudianhua = request.getParameter("kehudianhua");
String louyu = request.getParameter("louyu");
String xiangxidizhi = request.getParameter("xiangxidizhi");
String beizhu = request.getParameter("beizhu");

// �����Ƿ��ʹ��Ĭ��ֵΪ"δ�ʹ�"
String sfsd = "δ�ʹ�"; 

// ���Ӷ������
String maxBianhaoQuery = "SELECT MAX(bianhao) AS max_bianhao FROM ddjbxx";
ResultSet rs = s.executeQuery(maxBianhaoQuery);
String bianhao = "00000001";
if (rs.next()) {
    String maxBianhao = rs.getString("max_bianhao");
    if (maxBianhao != null) {
        int maxNumber = Integer.parseInt(maxBianhao);
        int nextNumber = maxNumber + 1;
        bianhao = String.format("%08d", nextNumber);
    }
}
rs.close();


// ����Ʒ��Ϣ�������ݿ�
String sql = "INSERT INTO ddjbxx (bianhao, fywzb, jtshyp, xxsc, jine, kehuxingming, kehudianhua, louyu, xiangxidizhi, beizhu, sfsd) VALUES ('" + bianhao + "', " + fywzb + ", " + jtshyp + ", " + xxsc + ", " + jine + ", '" + kehuxingming + "', '" + kehudianhua + "', '" + louyu + "', '" + xiangxidizhi + "', '" + beizhu + "', '" + sfsd + "')";
s.executeUpdate(sql);
s.close();
c.close();

out.print("<script language='javascript'>alert('�����ύ�ɹ���');window.location.href='../index.htm';</script>");
%>
