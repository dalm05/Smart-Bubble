var browserHeight;
var browserWidth;

if( typeof( window.innerWidth ) == 'number' ){ //Non-IE 
 		browserHeight = window.innerHeight;
		browserWidth = window.innerWidth;
}
else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight )){ //IE 6+ in 'standards compliant mode' 
	browserHeight = document.documentElement.clientHeight; 
	browserWidth = document.documentElement.clientWidth;
}
else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ){//IE 4 compatible 
 	browserHeight = document.body.clientHeight;
	browserWidth = document.body.clientWidth;
}

function setFrameMarginTop(n, id){
	var fh = document.getElementById(id).offsetHeight;	
	document.getElementById(id).style.marginTop = (browserHeight-fh)/n +'px';
}