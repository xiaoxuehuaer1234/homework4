<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.jebysun.contractmanager.form.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/bg.css">

  </head>
  
  <body>
    <%
    	HeTongForm hetong = (HeTongForm)session.getAttribute("info");
    	UserForm user = (UserForm)session.getAttribute("user");
    %>
    <hr>
    	<a href="index.jsp">������ҳ</a>
    <hr>
    <h3 align="center"><%=hetong.getHtmc()%></h3>
     <table>
     	<tr>
     		<td>��ͬ���:</td>
     		<td><%=hetong.getHtbh() %></td>
     		<td>��Ŀ����:</td>
     		<td><%=hetong.getXmmc() %></td>
     	</tr>
     	<tr>
     		<td>�׷�:</td>
     		<td><%=hetong.getJf()%></td>
     		<td>�׷�������:</td>
     		<td><%=hetong.getJfdlr() %></td>
     	</tr>
     	<tr>
     		<td>�ҷ�:</td>
     		<td><%=hetong.getYf()%></td>
     		<td>�ҷ�������:</td>
     		<td><%=hetong.getYfdlr() %></td>
     	</tr>
     	<tr>
     		<td>�׷�ǩ������:</td>
     		<td><%=hetong.getJfqzrq()%></td>
     		<td>�ҷ�ǩ������:</td>
     		<td><%=hetong.getYfqzrq() %></td>
     	</tr>
     	<tr>
     		<td>ǩ��ص�:</td>
     		<td><%=hetong.getQsdd()%></td>
     		<td>��Ч����:</td>
     		<td><%=hetong.getSxrq() %></td>
     	</tr>
     	<tr>
     		<td colspan="4" align="left">��ͬ���ݣ�</td>
     	</tr>
     	<tr>
     		<td colspan="4"><%=hetong.getHtnr() %></td>
     	</tr>
<% 
	if(user.getUpdateable()==1) {
%>
     	<tr>
     	 	<td colspan="4"><a href="update_hetong.jsp">�޸ĺ�ͬ</a></td>
     	</tr>
<% 
	}
%>
     </table>
  </body>
</html>
