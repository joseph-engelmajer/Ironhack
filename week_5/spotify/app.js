$(document).ready(function(){

	$('.js-artist-search-form').on("submit", function (event) {
		
		event.preventDefault();
		fetchArtists() // calling function that submits ajax request

//===================================================================================================
//================ Ajax Request For Artist Info =====================================================
//=================================================================================================== 
		
		function fetchArtists() {
			
			var input = $('.js-artist').val() //sets var = to the user input in search form
	    	
	    	$('.artistList').empty(); //empties the list of artists before appending new search to avoid duplicate data	
	    	
	    	$.ajax({
	            type: "GET",
	            url: `https://api.spotify.com/v1/search?type=artist&query=${input}`,
	            success: showArtists,
	            error: handleError
	        });		        		   
	    }
	    console.log("form submitted!")
	});  

//===================================================================================================
//================ Ajax Request For Artist's Albums =================================================
//=================================================================================================== 
		
		function fetchAlbums() {
			
		    $('.artistImg').click(function(event){
		    	var artistId = $(event.currentTarget).data('id')
		    	$.ajax({
		            type: "GET",
		            url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
		            success: function(response){
		            	console.log(response)
		            },
		            error: handleError
		        });		        		   
		    })
		};		 


//===================================================================================================
//==================== Display Artist Info ==========================================================
//=================================================================================================== 

    function showArtists (response) {
    	response.artists.items.forEach(function (theArtist) {
            var html = `
				<li> 
					<h2>${theArtist.name}</h2> 
					<img src=${theArtist.images[0].url} data-id=${theArtist.id} class="artistImg">							
				</li>
            `
      		
      		console.log(response);
            $('.artistList').prepend(html);
            fetchAlbums();
        });
    };

//===================================================================================================
//==================== Display Artist Albums ========================================================
//=================================================================================================== 

    function showArtists (response) {
    	response.artists.items.forEach(function (theArtist) {
            var html = `
				<li> 
					<h2>${theArtist.name}</h2> 
					<img src=${theArtist.images[0].url} data-id=${theArtist.id} class="artistImg">							
				</li>
            `
      		
      		console.log(response);
            $('.artistList').prepend(html);
            fetchAlbums();
        });
    };

//===================================================================================================
//==================== Display Error Function =======================================================
//=================================================================================================== 

	function handleError (error) {
	  console.log("Watch yo Back! We got an urrur");
	  console.log(error.responseText);
	}
//===================================================================================================


});




















