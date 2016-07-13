$(document).ready(function(){

console.log("the Doc is ready");

	if ("geolocation" in navigator) {
		console.log("browser has geolocation");
		navigator.geolocation.getCurrentPosition( showPosition, handleError );
	}
	else {
		console.log("Browser doesn't have geolocation");
		var html = `
			<h2> Update Yo Browser, Foo </h2>

			<p> Yo browser old as hell bruh.
			Update that s&^% to use these cool geolocation features.
			</p>
		`;

		$("body").prepend(html);
	}

	function showPosition(position){
		console.log("user agreed to share location.");
		console.log(position);

		var lat = position.coords.latitude;
		var long = position.coords.longitude;

		var html =`
			<h2> Your Position </h2>
			<ul>
				<li> Latitude: ${lat} </li>
				<li> Longitude: ${long} </li>
			</ul>
		`;

		$("body").append(html);
	};

	function handleError(error){
		console.log("Error getting position.");	
		console.log(error);

		if (error.code === 1) {
			var html = `<h2> Come On! Where are you? I need to know! At least answer my texts if you dont want to answer the phone! Please! I need to know where you are!`;
			$("body").append(html);
		};
	};

});