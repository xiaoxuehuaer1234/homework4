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
    	UserForm user = (UserForm)session.getAttribute("userInfo");
    %>
    <hr>
    	<a href="index.jsp">������ҳ</a>
    <hr>
    <h3 align="center">�˺���Ϣ</h3>
     <table>
     	<tr>
     		<td>�ʺ�:</td>
     		<td><%=user.getUsername() %></td>
     	</tr>
     	<tr>
     		<td>ְλ:</td>
     		<td><%=user.getZwmc() %></td>
     	</tr>
     	<tr>
     		<td>����:</td>
     		<td><%=user.getRealName() %></td>
     	</tr>
     	<tr>
     		<td>Ȩ��:</td>
     		<td>
     			<%=user.getReadable()==1?"�鿴":"" %>
     			<%=user.getUpdateable()==1?"�޸�":""%>
     			<%=user.getCreateable()==1?"����":""%>
     			<%=user.getDeleteable()==1?"ɾ��":""%>
     		</td>
     	</tr>
     	<tr>
     		<td>��������:</td>
     		<td><%=user.getCreatedate() %></td>
     	</tr>
     	<tr>
     		<td colspan="2"><a href="update_userQx.jsp">�޸�ְλȨ��</a></td>
     	</tr>
     </table>
  </body>
</html>
