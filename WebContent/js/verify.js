
function verifyIt() {
    var name=document.forms["payForm"]["custName"].value;
	var email=document.forms["payForm"]["custEmail"].value;
	var amnt=document.forms["payForm"]["paidAmnt"].value;
	
	if((name.length<1))
	{
		alert("Name & Email Field Cannot left Empty");
		
		//return false;
		
	}
	else if(email.length<1))
	{
		alert("Name & Email Field Cannot left Empty");
	}
	else if(amnt.length<1)){
		alert("Enter the amount!");
	}
	
		

	
}