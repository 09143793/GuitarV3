<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="entity.Guitar"%>
<%@ page import="dao.GuitarDao"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>成功页面</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/easyui.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/icon.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/demo.css" />
    <script src="<%=request.getContextPath()%>/js/eajquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.easyui.min.js"></script>
</head>
<body>
	<center>
Guitar信息<br /><br />
<div class="catbox">
	<table id="resultTable" border=2>
		<thead>
			<tr>
				<th>serialNumber</th>
				<th>price</th>
				<th>builder</th>
				<th>model</th>
				<th>type</th>
				<th>numStrings</th>
				<th>backWood</th>
				<th>topWood</th>
				<th>delete</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="#session.AllGuitarList" id="guitar">
			<tr>
				<td class="serialNumber"><s:property value="#guitar.serialNumber"/></td>
				<td class="price"><s:property value="#guitar.price"/></td>
				<td class="builder"><s:property value="#guitar.spec.builder"/></td>
				<td class="model"><s:property value='#guitar.spec.model'/></td>
				<td class="type"><s:property value="#guitar.spec.type"/></td>
				<td class="numStrings"><s:property value="#guitar.spec.numStrings"/></td>
				<td class="backwWood"><s:property value="#guitar.spec.backWood"/></td>
				<td class="topWood"><s:property value="#guitar.spec.topWood"/></td>
				<td class="delete"><a href="deleteGuitar?serialNumber=<s:property value='#guitar.serialNumber'/>">delete</a></td>
			</tr>

			</s:iterator>
		</tbody>
	</table>
</div>
</center>
</body>
</html>