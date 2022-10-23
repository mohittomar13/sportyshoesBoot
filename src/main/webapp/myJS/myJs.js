/*
	This code is used by the login.jsp page to select who will login. 
	It changes the login button accordingly.
	Check Line No. ~62 (login.jsp)
*/

function loginAs() {
	var selectorRadios = document.getElementsByName("selector");
	for (i = 0; i < selectorRadios.length; i++) {
		if (selectorRadios[i].checked) {
			var valueOfRadioSelected = selectorRadios[i].value;
			document.getElementById("loginButton").innerHTML = valueOfRadioSelected;
		}
	}
}

/*
	Used in the header.jspf page to make 'men', 'women' or 'kid' as the active
	button. It changes the colour for the button by setting it as active 
	Check Line No. ~23 (login.jsp)
*/
function selectActivePage() {
	//https://www.sitepoint.com/get-url-parameters-with-javascript/
	//https://www.w3schools.com/js/js_window_location.asp
	var navItems = document.getElementsByClassName("nav-item");
	
	/*
		This was useful when I was using URL rewriting
			var queryString = window.location.search;
			var urlParams = new URLSearchParams(queryString);
			var pageType = urlParams.get("pageType");
		
		Now as NavigationalRedirects is handling the redirects and 
		not the URL parameters (URL rewriting) thus we have to use
			window.location.href 
		The above line of code will return the complete URL of the
		current page. For e.g.
			window.location.href will return in our case:
				http://localhost:8080/men
			when we run this on "/men" navbar item.
	*/
	var url = window.location.href;
	var pageType = url.substring(url.lastIndexOf("/") + 1);
	console.log(pageType);
	
	for (i = 0; i < navItems.length; i++) {
		if(navItems[i].id == pageType){
			navItems[i].className += " active";
		}
	}
}
