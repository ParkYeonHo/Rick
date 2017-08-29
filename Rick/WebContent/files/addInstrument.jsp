<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="EnumType.*"%>

<script src="CheckScript.js"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 maximum-scale=1.0, minimum-scale=0, user-scalable=no, target-densitydpi=medium-dpi">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Rick's Guitar</title>




<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet”
	type=”text/css” />
<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>



<script type="text/javascript"></script>

<style>
.parent {
	display: table;
	width: 100%;
}

.form_login {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}
</style>




</head>
<body onLoad="AddFrm.id.focus()">


	<div style="margin: 100px 0px 0px 420px">
		<form "name="AddFrm" method="post" action="addInstrumentProc.jsp">


			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">고유번호</label>
				<div class="col-sm-10">
					<input type="text" style="width: 200px" class="form-control"
						name="serialNumber" placeholder="AMD38210">
				</div>
			</div>

			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">가격</label>
				<div class="col-sm-10">
					<input type="text" style="width: 200px" class="form-control"
						name="price" placeholder="132.4"> 
				</div>
			</div>

			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">모델명</label>
				<div class="col-sm-10">
					<input type="text" style="width: 200px" class="form-control"
						name="model" placeholder="niceGuitar">
				</div>
			</div>




			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">줄
					수</label>
				<div class="col-sm-10">
					<input type="text" style="width: 200px" class="form-control"
						name="numString" placeholder="6">
				</div>
			</div>



			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">제조사</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="builder">
						<option value="">제조사를 선택하세요</option>
						<option value="<%=Builder.FENDER.toString()%>">FENDER</option>
						<option value="<%=Builder.MARTIN.toString()%>">MARTIN</option>
						<option value="<%=Builder.GIBSON.toString()%>">GIBSON</option>
						<option value="<%=Builder.COLLINGS.toString()%>">COLLINGS</option>
						<option value="<%=Builder.OLSON.toString()%>">OLSON</option>
						<option value="<%=Builder.RYAN.toString()%>">RYAN</option>
						<option value="<%=Builder.PRS.toString()%>">PRS</option>
						<option value="<%=Builder.ANY.toString()%>">ANY</option>
					</select>
				</div>
			</div>



			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">악기</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="instrumentType">
						<option value="">악기를 선택하세요</option>
						<option value="<%=InstrumentType.GUITAR.toString()%>">GUITAR</option>
						<option value="<%=InstrumentType.BANJO.toString()%>">BANJO</option>
						<option value="<%=InstrumentType.DOBRO.toString()%>">DOBRO</option>
						<option value="<%=InstrumentType.FIDDLE.toString()%>">FIDDLE</option>
						<option value="<%=InstrumentType.BASS.toString()%>">BASS</option>
						<option value="<%=InstrumentType.MANDOLIN.toString()%>">MANDOLIN</option>

					</select>
				</div>
			</div>


			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">타입</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="type">
						<option value="">악기타입을 선택하세요</option>
						<option value="<%=Type.ACOUSTIC.toString()%>">ACOUSTIC</option>
						<option value="<%=Type.ELECTRIC.toString()%>">ELECTRIC</option>

					</select>
				</div>
			</div>


			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">스타일</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="style">
						<option value="">악기타입을 선택하세요</option>
						<option value="<%=Style.A.toString()%>">A</option>
						<option value="<%=Style.F.toString()%>">F</option>

					</select>
				</div>
			</div>





			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Top
					Wood</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="topWood">
						<option value="">Back Wood를 선택하세요</option>
						<option value="<%=Wood.INDIAN_ROSEWOOD.toString()%>">INDIAN_ROSEWOOD</option>
						<option value="<%=Wood.BRAZILIAN_ROSEWOOD.toString()%>">BRAZILIAN_ROSEWOOD</option>
						<option value="<%=Wood.MAHOGANY.toString()%>">MAHOGANY</option>
						<option value="<%=Wood.MAPLE.toString()%>">MAPLE</option>
						<option value="<%=Wood.COCOBOLO.toString()%>">COCOBOLO</option>
						<option value="<%=Wood.CEDAR.toString()%>">CEDAR</option>
						<option value="<%=Wood.ADIRONDACK.toString()%>">ADIRONDACK</option>
						<option value="<%=Wood.ALDER.toString()%>">ALDER</option>
						<option value="<%=Wood.SITKA.toString()%>">SITKA</option>

					</select>
				</div>
			</div>



			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Bac
					kWood</label>
				<div class="col-sm-10" style="width: 300px">
					<select class="form-control" name="backWood">
						<option value="">Back Wood를 선택하세요</option>
						<option value="<%=Wood.INDIAN_ROSEWOOD.toString()%>">INDIAN_ROSEWOOD</option>
						<option value="<%=Wood.BRAZILIAN_ROSEWOOD.toString()%>">BRAZILIAN_ROSEWOOD</option>
						<option value="<%=Wood.MAHOGANY.toString()%>">MAHOGANY</option>
						<option value="<%=Wood.MAPLE.toString()%>">MAPLE</option>
						<option value="<%=Wood.COCOBOLO.toString()%>">COCOBOLO</option>
						<option value="<%=Wood.CEDAR.toString()%>">CEDAR</option>
						<option value="<%=Wood.ADIRONDACK.toString()%>">ADIRONDACK</option>
						<option value="<%=Wood.ALDER.toString()%>">ALDER</option>
						<option value="<%=Wood.SITKA.toString()%>">SITKA</option>
					</select>
				</div>
			</div>


			<div align="left">


				<input type="submit" class="btn btn-info" value="등록" />
				 <input type="button" class="btn btn-info" value="취소"onclick="location.href='../index.jsp'" />
		</form>
	</div>

	</div>

</body>
</html>




