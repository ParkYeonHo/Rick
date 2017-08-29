<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="rick.DB"%>
<%@ page import="rick.InstrumentSpec"%>
<%@ page import="java.util.*"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 maximum-scale=1.0, minimum-scale=0, user-scalable=no, target-densitydpi=medium-dpi">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Rick's Guitar</title>

</head>


<%
	Map properties = new HashMap();
	DB db = new DB();
	int isSucceeded;

	String serialNumber = request.getParameter("serialNumber");
	double price = Double.valueOf(request.getParameter("price"));
	properties.put("model", request.getParameter("model"));
	properties.put("numString", request.getParameter("numString"));

	properties.put("instrumentType", request.getParameter("instrumentType"));
	properties.put("builder", request.getParameter("builder"));
	properties.put("type", request.getParameter("type"));
	properties.put("topWood", request.getParameter("topWood"));
	properties.put("backWood", request.getParameter("backWood"));
	properties.put("style", request.getParameter("style"));

	isSucceeded = db.addInstrument(serialNumber, price, new InstrumentSpec(properties));
%>



<%
	if (isSucceeded == 1) {
%>
<script type="text/javascript">
	alert("등록 되었습니다 !!");
	location.href = "../index.jsp";
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("등록이 안되었습니다 !! 정보를 다시 한번 확인하세요 !!");
	history.back();
</script>
<%
	}
%>



</html>




