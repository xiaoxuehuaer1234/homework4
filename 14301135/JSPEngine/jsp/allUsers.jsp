<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>ȫ���ʺ�</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/bg.css">


  </head>

  <body>
    <hr>
    	<a href="index.jsp">������ҳ</a>|<a href="">�˳���¼</a>
    <hr>
	<h1 align="center"><font color="#400040"><strong>ȫ���ʺ�</strong></font></h1>

<c:if test="${!empty users.datas}">
	<table width="60%" border="0">
		<tbody>
			<th>���</th>
			<th>�˺�</th>
			<th colspan="2">����</th>
			<c:forEach items="${users.datas}" var="user">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td><a href="userAction.do?method=readUserInfo&id=${user.id }">�鿴</a></td>
					<td><a href="userAction.do?method=deleteUser&id=${user.id }">ɾ��</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<TABLE width="778" border=0 align=center cellPadding=0 cellSpacing=0 borderColor=#ffffff style="FONT-SIZE: 10pt">
        <TBODY>
          <TR>
            <TD height=28 align=right vAlign=center nowrap="nowrap">&nbsp;&nbsp;
				<pg:pager url="userAction.do" items="${users.total }" export="currentPageNumber=pageNumber" maxPageItems="10">
					<pg:param name="method" value="allUsers"/>
					<pg:first>
						<a href="${pageUrl}">��ҳ</a>
					</pg:first>
					<pg:prev>
						<a href="${pageUrl}">ǰҳ</a>
					</pg:prev>
					<pg:pages>
						<c:choose>
							<c:when test="${currentPageNumber eq pageNumber }">
								<font color="red">${pageNumber }</font>
							</c:when>
							<c:otherwise>
								<a href="${pageUrl }">${pageNumber }</a>
							</c:otherwise>
						</c:choose>
					</pg:pages>
					<pg:next>
						<a href="${pageUrl }">��ҳ</a>
					</pg:next>
					<pg:last>
						<a href="${pageUrl }">βҳ</a>
					</pg:last>
				</pg:pager>
    		</TD>
          </TR>
        </TBODY>
      </TABLE>
</c:if>

<c:if test="${empty users.datas}">
     <div align="center">
          û���κμ�¼
     </div>
</c:if>
</body>
</html>
