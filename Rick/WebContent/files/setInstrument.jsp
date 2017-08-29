<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<%@ page import="rick.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet”
	type=”text/css” />
<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>

<%
	String srN = request.getParameter("srN");
	HashMap hsm = new HashMap();
	DB db = new DB();

	hsm = db.get(srN);
%>

<title>Rick's Guitar</title>
</head>




<body>



	<div style="margin: 100px 0px 0px 420px">
		<form "name="AddFrm" method="post" action="modifyProc.jsp">

 
					<input type="hidden" style="width: 200px" class="form-control"
						name="serialNumber" value="<%=srN%>">
				 

			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">가격</label>
				<div class="col-sm-10">
					<input type="text" style="width: 200px" class="form-control"
						name="price" value="<%=hsm.get("price")%>">
				</div>
			</div>

			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">모델명</label>
				<div class="col-sm-10">
					<input type="text" style="width: 200px" class="form-control"
						name="model" value="<%=hsm.get("model")%>">
				</div>
			</div>




			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">줄
					수</label>
				<div class="col-sm-10">
					<input type="text" style="width: 200px" class="form-control"
						name="numStrings" value="<%=hsm.get("numStrings")%>">
				</div>
			</div>



			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">제조사</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="builder">
						<option value="<%=hsm.get("builder")%>"><%=hsm.get("builder")%></option>
						<option value="FENDER">FENDER</option>
						<option value="MARTIN">MARTIN</option>
						<option value="GIBSON">GIBSON</option>
						<option value="COLLINGS">COLLINGS</option>
						<option value="OLSON">OLSON</option>
						<option value="RYAN">RUAN</option>
						<option value="PRS">PRS</option>
						<option value="ANY">ANY</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">악기</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="instrumentType">
						<option value="<%=hsm.get("instrumentType")%>"><%=hsm.get("instrumentType")%></option>
						<option value="GUITAR">GUITAR</option>
						<option value="BANJO">BANJO</option>
						<option value="DOBRO">DOBRO</option>
						<option value="FIDDLE">FIDDLE</option>
						<option value="BASS">BASS</option>
						<option value="MANDOLIN">MANDOLIN</option>

					</select>
				</div>
			</div>


			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">타입</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="type">
						<option value="<%=hsm.get("type")%>"><%=hsm.get("type")%></option>
						<option value="ACOUSTIC">ACOUSTIC</option>
						<option value="ELECTRIC">ELECTRIC</option>

					</select>
				</div>
			</div>


			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">스타일</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="style">
						<option value="<%=hsm.get("style")%>"><%=hsm.get("style")%></option>
						<option value="A">A</option>
						<option value="F">F</option>

					</select>
				</div>
			</div>





			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Top
					Wood</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="topWood">
						<option value="<%=hsm.get("topWood")%>"><%=hsm.get("topWood")%></option>
						<option value="INDIAN_ROSEWOOD">INDIAN_ROSEWOOD</option>
						<option value="BRAZILIAN_ROSEWOOD">BRAZILIAN_ROSEWOOD</option>
						<option value="MAHOGANY">MAHOGANY</option>
						<option value="MAPLEC">MAPLE</option>
						<option value="COCOBOLO">COCOBOLO</option>
						<option value="CEDAR">CEDAR</option>
						<option value="ADIRONDACK">ADIRONDACK</option>
						<option value="ALDER">ALDER</option>
						<option value="ACOUSTIC">ACOUSTIC</option>
						<option value="SITKA">SITKA</option>

					</select>
				</div>
			</div>



			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Bac
					kWood</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="backWood">
						<option value="<%=hsm.get("backWood")%>"><%=hsm.get("backWood")%></option>
						<option value="INDIAN_ROSEWOOD">INDIAN_ROSEWOOD</option>
						<option value="BRAZILIAN_ROSEWOOD">BRAZILIAN_ROSEWOOD</option>
						<option value="MAHOGANY">MAHOGANY</option>
						<option value="MAPLEC">MAPLE</option>
						<option value="COCOBOLO">COCOBOLO</option>
						<option value="CEDAR">CEDAR</option>
						<option value="ADIRONDACK">ADIRONDACK</option>
						<option value="ALDER">ALDER</option>
						<option value="ACOUSTIC">ACOUSTIC</option>
						<option value="SITKA">SITKA</option>

					</select>
				</div>
			</div>


			<div align="left">

				<input type="button" class="btn btn-info" value="취소"
					onclick="location.href='../index.jsp'"> <input
					type="button" class="btn btn-info" value="삭제"
					onclick="location.href='deleteProc.jsp?srN=<%=srN%>'">

				<input type="submit" class="btn btn-info" value="수정" >

			</div>
	</div>

</body>
</html>