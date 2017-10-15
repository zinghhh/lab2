<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Info</title>
<style>
body{background:url(bj.jpg) no-repeat center 0}

</style>
</head>
<body>
<center>
	<h1>Library System</h1>
    <h3>The Book's Number is <s:property value="ISbnn"/> : </h3>

<table width="150" border="1">
<tr>
<td>ISBN</td>
<td>Title</td>
<td>Publisher</td>
<td>PublishDate</td>
<td>Price</td>
<td>AuthorID</td>
<td>Name</td>
<td>Age</td>
<td>Country</td>
<s:iterator value = "rslst2" var= 'it'>
 <tr>
 	<th align="right"><s:property value= 'ISBN'/></th>
	<th align="right"><s:property value= '#it.Title'/></th>
 	<th align="right"><s:property value= '#it.Publisher'/></th>
 	<th align="right"><s:property value= '#it.PublishDate'/></th>
 	<th align="right"><s:property value= '#it.Price'/></th>
 	<th align="right"><s:property value= '#it.AuthorID'/></th>
 	<th align="right"><s:property value= '#it.Name'/></th>
 	<th align="right"><s:property value= '#it.Age'/></th>
 	<th align="right"><s:property value= '#it.Country'/></th>
 	<th align="center"><a href ="Delebks.action?deISB=<s:property value="ISBN"/>"onclick="return del();">delete</a></th>
 </tr>
</s:iterator>
</table>
<input type="button" onclick="location.href= 'http://bookctrl.applinzi.com/Hello.jsp' "  value="return"/>
<script type="text/javascript">
			function del()
			{
				var flag=false;
				if (confirm("delete?"))
					{
						flag=true;
						alert('success！');history.go(-1);
					}
				return flag;
			}
		</script>
</center>
</body>
</html>