<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style>
div, pre {
	background: #fff;
	padding: 10px;
	margin: 10px;
}

table {
	border: 1px;
	solid
	#AAA;
}

td {
	border: 1px solid #AAA;
	width: 25px;
	height: 25px;
}
</style>

</head>
<body style="padding:10px;">
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<h2>jQuery selector</h2>
	<p>Please visit jQuery.com</p>
	<div>
	    <form id="formId">
		<input type="text" name="a" value="1"  id="a" /><br />
		<input type="text" name="b" value="2"  id="b" /><br />
		<input type="hidden" name="c" value="3" id="c"/><br />
		<select name="d" >
		    <option value="5" selected="selected" >5</option>
		    <option value="6">6</option>
		    <option value="7" >7</option>
		</select><br />
		<input type="submit" name="f" value="Submit" id="f"  />
	    </form>
	</div>
</body>
</html>


<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$.ajax({
		url : "/signUp",
		dataType : "json",
		type : "post",
		data : $('#formId').seializeArray(),
		success : function(data) {
			alert("success: " + data.KEY);
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "error:" + error);
		}
	});
</script>
