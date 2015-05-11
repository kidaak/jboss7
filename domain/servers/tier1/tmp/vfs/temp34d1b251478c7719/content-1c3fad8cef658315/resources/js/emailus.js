
// Email 
function DisplayMail(Server, Login, Display){
	if ((Display.length == 0) || (Display.indexOf('@')+1)) {
	document.write('<a href=' + '"mai' + 'lto:' + Login + '@' + Server + '">' + Login + '@' + Server + '<\/a>'); }
	else  {
	document.write('<a href=' + '"mai' + 'lto:' + Login + '@' + Server + '">' + Display + '<\/a>'); }
}