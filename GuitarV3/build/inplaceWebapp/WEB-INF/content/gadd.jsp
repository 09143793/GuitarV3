<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加吉他页面</title>
</head>
<body>
	<form action="addGuitar" method="post">
	<div>
		<h3 align="center"><span>添加</span></h3><br/>
</div>
	<div align="center">
		<span>serialNumber： </span>		
		<input type="text" value="" name="serialNumber" >						
</div>
	<div align="center">
		<span>price： </span>		
		<input type="text" value="" name="price" >						
</div>
	<div align="center">
		<span>builder： </span>		
		<input type="text" value="" name="builder" >						
</div>
	<div align="center">
		<span>model： </span>		
		<input type="text" value="" name="model" >						
</div>
	<div align="center">
		<span>numStrings： </span>		
		<input type="text" value="" name="numStrings" >						
</div>
	<div align="center">
		<span>type： </span>		
		<input type="text" value="" name="type" >						
</div>
	<div align="center">
		<span>backWood：</span>		
		<input type="text" value="" name="backWood" >						
</div>
	<div align="center">
		<span>topWood： </span>		
		<input type="text" value="" name="topWood" >						
</div>
	<div align="center">
		<input type="submit" value="确认" >						
</div>
		</form>
	
</body>
</html>