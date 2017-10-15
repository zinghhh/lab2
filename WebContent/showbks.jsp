<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>show books</title>

</head>
<style>
body{background:url(bj.jpg) no-repeat center 0}

</style>
<body>
<center>
	<h1>Library System</h1>
    <h2><s:property value="AuName"/>'s book</h2>


<table width="150" border="1">
<tr>
<td>ISBN</td>
<td>Title</td>
<s:iterator value = "rslst1" var= 'it'>
 <tr>
 	<th align="right"><s:property value= '#it.ISBN'/></th>
	<th align="right"><a href ="Showallinfo.action?ISbnn=<s:property value="ISBN"/>"><s:property value= '#it.Title'/></a></th>
	<th align="center"><a href ="Delebks.action?deISB=<s:property value="ISBN"/>" onclick="return del();">delete</a></th>
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