$(document).ready(function(){
	$('.js-artist-search-form').on("submit", function (event) {
		event.preventDefault();
		fetchArtists()
		function fetchArtists() {
			var input = $('.js-artist').val()
	    	$('.artistList').empty();	
	    	$.ajax({
	            type: "GET",
	            url: `https://api.spotify.com/v1/search?type=artist&query=${input}`,
	            success: function (response) {
	              console.log("success!")
	              console.log(response);
	              // showCharacters(response);
	            },
	            error: function (error) {
	              console.log("Error!");
	              // console.log(error.responseText);
	            }
	        });		        		   
	    }
	    console.log("form submitted!")
	});    

    function showArtists (responseArray) {
    	responseArray.forEach(function (theArtist) {
            var html = `
				<li> 
												
				</li>
            `
      
            $('.artistList').prepend(html);
        });
    };



});