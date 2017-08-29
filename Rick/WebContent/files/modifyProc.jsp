<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="rick.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Rick's Guitar</title>
<%
	HashMap properties = new HashMap();
	DB db = new DB();
	int isSucceeded;


	properties.put("serialNumber", request.getParameter("serialNumber"));
	properties.put("price", request.getParameter("price"));
	properties.put("instrumentType", request.getParameter("instrumentType"));
	properties.put("builder", request.getParameter("builder"));
	properties.put("model", request.getParameter("model"));
	properties.put("type", request.getParameter("type"));
	properties.put("numStrings", request.getParameter("numStrings"));
	properties.put("topWood", request.getParameter("topWood"));
	properties.put("backWood", request.getParameter("backWood"));
	properties.put("style", request.getParameter("style"));

	isSucceeded=db.modifyInstrument(properties);
%>

 

<%
	if (isSucceeded==1) {
%>
<script type="text/javascript">
	alert("수정되었습니다 !!");
	location.href = "../index.jsp";
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("수정이 안되었습니다 !!");
	history.back();
</script>
<%
	}
%>