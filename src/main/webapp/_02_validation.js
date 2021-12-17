
function agreeAll(form){
	if(form.checkbox[0].checked === true){
		for(let i=0; i<form.checkbox.length; i++){
			form.checkbox[i].checked = true;
		}		
	}
	else if(form.checkbox[0].checked === false){
		for(let i=0; i<form.checkbox.length; i++){
			form.checkbox[i].checked = false;
		}
	}
}

function agreeCheck(form){
	if(form.checkbox[0].checked === true){
		form.checkbox[0].checked = false;
	}
}

function agreeJoin(form){
	const change = document.querySelector("#alert");
	
	if(form.checkbox[1].checked === true && form.checkbox[2].checked === true){
				change.style.visibility = "hidden";
				form.submit();
	}
	if(form.checkbox[1].checked === false || form.checkbox[2].checked === false){
		change.style.visibility = "visible";
	}
}
