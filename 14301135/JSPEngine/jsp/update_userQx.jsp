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
   	<h2 align="center">�޸��˺�Ȩ��ְλ</h2>
   	<form action="userAction.do?method=updateUserQx&id=<%=user.getId() %>" method="post">
     <table align="center">
     	<tr>
     		<td>ְλ:</td>
     		<td>
     			<input type="text" name="zwmc">
     		</td>
     	</tr>
     	<tr>
     		<td>���ĺ�ͬ:</td>
     		<td><select name="readable" id="readable">
              <option value="0">��</option>
              <option value="1">��</option>
            </select>     		</td>
     	</tr>
     	<tr>
     		<td>�޸ĺ�ͬ:</td>
     		<td><select name="updateable" id="updateable">
              <option value="0">��</option>
              <option value="1">��</option>
            </select>     		</td>
     	</tr>
		<tr>
     		<td>������ͬ:</td>
     		<td><select name="createable" id="createable">
              <option value="0">��</option>
              <option value="1">��</option>
            </select>     		</td>
     	</tr>
		<tr>
     		<td>ɾ����ͬ:</td>
     		<td><select name="deleteable" id="deleteable">
              <option value="0">��</option>
              <option value="1">��</option>
            </select>     		</td>
     	</tr>
     	<tr>
     		<td colspan="2" align="center">
     			<input type="reset" value="���">
     			<input type="submit" value="ȷ��">
     		</td>
     	</tr>
     </table>
    </form>
  </body>
</html>
