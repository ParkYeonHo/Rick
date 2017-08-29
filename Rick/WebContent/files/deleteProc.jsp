<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="rick.DB"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Rick's Guitar</title>
</head>

<%

String srN = request.getParameter("srN");
DB db = new DB();
int isSucceeded;

isSucceeded=db.delete(srN);


%>
 
 
<%
	if (isSucceeded==1) {
%>
<script type="text/javascript">
	alert("삭제되었습니다 !!");
	location.href = "../index.jsp";
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("삭제가 되지 않았습니다 !!");
	history.back();
</script>
<%
	}
%>

 