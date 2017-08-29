<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="rick.*"%>
<%@ page import="EnumType.*"%>
<%@ page import="java.util.*"%>



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
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">


<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>

<script src="CheckScript.js"></script>

</head>


<body>
	
	<br>
	<br>
	<div class="text-center">
  <img src="imagefiles/guitar.jpg" class="rounded" style="width:150px;height:150px">
</div>
	<br>
	<form action="">
		<div align="center" class="container">
			<div style="font-size: 20px margin-left:500px">
				<h1>Rick's Guitar !!</h1>
				<p>there are many guitar what you want</p>
			</div>
	</form>
	
	
	<br>
	<br>


	</div>


 

	<div align="center">
		<form method="post" action="">

			<div>
				<div class="col-sm-6 col-sm-offset-3">
					<div class="input-group stylish-input-group">
						<input type="text" class="form-control" name="search"
							placeholder="Search"> <span class="input-group-addon">
							<input type="image" src="imagefiles/search.png"
							style="height: 15px; width: 17px;">
						</span>
					</div>

				</div>
			</div>



			<div style="margin-bottom:2px"class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label"></label>
				<div  class="col-sm-10" style="width: 160px">
					<select   class="form-control" name="keyword">
						<option value="">keyword</option>
						<option value="instrumentType">instrumentType</option>
						<option value="builder">builder</option>
						<option value="model">model</option>
						<option value="type">type</option>
						<option value="numStrings">numStrings</option>
						<option value="backWood">backWood</option>
						<option value="topWood">topWood</option>
						<option value="style">style</option>

					</select>
				</div>
			</div>
		</form>


	</div>



	<br>




	<table style="width: 85%" align="center" class="table table-hover">
		<thead>
			<tr>
				<th>serialNumber</th>
				<th>price</th>
				<th>instrumentType</th>
				<th>builder</th>
				<th>model</th>
				<th>type</th>
				<th>numString</th>
				<th>topWood</th>
				<th>backWood</th>
				<th>style</th>

			</tr>
		</thead>
		<tbody>


			<%
				String search = request.getParameter("search");
				String keyword = request.getParameter("keyword");

				LinkedList list;

				DB db = new DB();

				if (search == null && keyword == null || search=="" ) {
					list = db.getAllInstrument();
				} else {
					list = db.getInstrument(search, keyword);
				}

				//searchingKey를 이용

				for (Iterator i = list.iterator(); i.hasNext();) {
					Instrument ins = (Instrument) i.next();
			%>
			<tr>

				<td><%=ins.getSerialNumber()%></td>
				<td><%=ins.getPrice()%></td>
				<td><%=ins.getSpec().getProperty("instrumentType")%></td>
				<td><%=ins.getSpec().getProperty("builder")%></td>
				<td><%=ins.getSpec().getProperty("model")%></td>
				<td><%=ins.getSpec().getProperty("type")%></td>
				<td><%=ins.getSpec().getProperty("numStrings")%></td>
				<td><%=ins.getSpec().getProperty("topWood")%></td>
				<td><%=ins.getSpec().getProperty("backWood")%></td>
				<td><%=ins.getSpec().getProperty("style")%></td>
				<td><input type="image" id="myimage"
					style="height: 20px; width: 20px;" src="imagefiles/modify.png"
					onclick="location.href='files/setInstrument.jsp?srN=<%=ins.getSerialNumber()%>'" />
				</td>
			</tr>
			<%
				}
			%>


		</tbody>


	</table>

	</div>


	<div>
 
		<div align="right" style="padding-right: 105px">
			<button type="submit" class="btn btn-info"
				onclick="location.href='files/addInstrument.jsp'">등록</button>
		</div>
	</div>


</body>
</html>




