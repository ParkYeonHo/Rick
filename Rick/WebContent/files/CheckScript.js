/**
 * 
 */


function addGuitarCheck(){
	 
	if (document.AddFrm.serialNumber.value ="") {
		alert("고유번호를 입력해주세요");
		document.AddFrm.serialNumber.focus();
		return;
	}

	if (document.AddFrm.numString.value = "") {
		alert("줄 수를 입력해주세요");
		document.AddFrm.numString.focus();
		return;
	}

	if (document.AddFrm.builder.value ="") {
		alert("제조사를 선택해주세요");
		document.AddFrm.builder.focus();
		return;
	}
	
	if (document.AddFrm.instrumentType.value = "") {
		alert("악기를 선택해주세요");
		document.AddFrm.instrumentType.focus();
		return;
	}
		
	if (document.AddFrm.topWood.value = "") {
		alert("Top Wood를 선택해주세요");
		document.AddFrm.topWood.focus();
		return;
	}
	
	if (document.AddFrm.backWood.value = "") {
		alert("Back Wood를 선택해주세요");
		document.AddFrm.backWood.focus();
		return;
	}
	
	if (document.AddFrm.price.value = "") {
		alert("가격을 입력해주세요");
		document.AddFrm.price.focus();
		return;
	}
	
	if (document.AddFrm.type.value = "") {
		alert("가격을 입력해주세요");
		document.AddFrm.type.focus();
		return;
	}
	
	if (document.AddFrm.price.value = "") {
		alert("가격을 입력해주세요");
		document.AddFrm.price.focus();
		return;
	}
	
	if (document.AddFrm.model.value = "") {
		alert("가격을 입력해주세요");
		document.AddFrm.model.focus();
		return;
	}
	
	document.AddFrm.submit();
	
}