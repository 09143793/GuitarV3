<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加</title>
</head>
<body>
<form action="addGuitar" method="post">
	<div>
		<h3 align="center"><span>Add Guitar</span></h3><br/>
</div>

	<div align="center">
		<span>serialNumber：</span>		
		<input type="text" value="" name="serialNumber" >						
</div><br/>
	<div align="center">
		<span>&nbsp;&nbsp;&nbsp;price： </span>		
		<input type="text" value="" name="price" >						
</div><br/>
	<div align="center">
		<span>&nbsp;&nbsp;builder： </span>		
		<input type="text" value="" name="builder" >						
</div><br/>
	<div align="center">
		<span>&nbsp;&nbsp;&nbsp;model： </span>		
		<input type="text" value="" name="model" >						
</div><br/>
	<div align="center">
		<span>numStrings： </span>		
		<input type="text" value="" name="numStrings" >						
</div><br/>
	<div align="center">
		<span>&nbsp;&nbsp;&nbsp;&nbsp;type： </span>		
		<input type="text" value="" name="type" >						
</div><br/>
	<div align="center">
		<span>&nbsp;backWood：</span>		
		<input type="text" value="" name="backWood" >						
</div><br/>
	<div align="center">
		<span>&nbsp;topWood： </span>		
		<input type="text" value="" name="topWood" >						
</div><br/>
	<div align="center">
		<input type="submit" value="确认" >						
</div>
		</form>
</body>
</html>