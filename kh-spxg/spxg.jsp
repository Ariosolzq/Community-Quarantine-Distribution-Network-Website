<%-- 网页编码采用简体中文--%>
<%@ page contentType="text/html;charset=GB2312"%>
<%-- 包含连接数据库的文件--%>
<%@ include file="../jdbc-ddjbxx.jsp"%>

<%
//设置中文编码方式
request.setCharacterEncoding("gb2312");

//取得提交的订单信息
int fywzb = Integer.parseInt(request.getParameter("fywzb"));
int jtshyp = Integer.parseInt(request.getParameter("jtshyp"));
int xxsc = Integer.parseInt(request.getParameter("xxsc"));

// 计算总金额
double jine = (fywzb + jtshyp + xxsc) * 10;

String kehuxingming = request.getParameter("kehuxingming");
String kehudianhua = request.getParameter("kehudianhua");
String louyu = request.getParameter("louyu");
String xiangxidizhi = request.getParameter("xiangxidizhi");
String beizhu = request.getParameter("beizhu");

// 设置是否送达的默认值为"未送达"
String sfsd = "未送达"; 

// 增加订单编号
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


// 将商品信息插入数据库
String sql = "INSERT INTO ddjbxx (bianhao, fywzb, jtshyp, xxsc, jine, kehuxingming, kehudianhua, louyu, xiangxidizhi, beizhu, sfsd) VALUES ('" + bianhao + "', " + fywzb + ", " + jtshyp + ", " + xxsc + ", " + jine + ", '" + kehuxingming + "', '" + kehudianhua + "', '" + louyu + "', '" + xiangxidizhi + "', '" + beizhu + "', '" + sfsd + "')";
s.executeUpdate(sql);
s.close();
c.close();

out.print("<script language='javascript'>alert('订单提交成功！');window.location.href='../index.htm';</script>");
%>
