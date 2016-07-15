$(document).ready(function(){
//===================================================================================================
//================ Search Button Functionality ======================================================
//=================================================================================================== 

	$('.js-song-search-form').on("submit", function (event) {
		
		event.preventDefault();
		fetchSongs() // calling function that submits ajax request

//===================================================================================================
//================ Ajax Request For Song Info =====================================================
//=================================================================================================== 
		
		function fetchSongs() {
			
			var input = $('.js-song').val() //sets var = to the user input in search form

	    	$.ajax({
	            type: "GET",
	            url: `https://api.spotify.com/v1/search?type=track&query=${input}`,
	            success: displaySong,
	            error: handleError
	        });		        		   
	    }
	    console.log("form submitted!")
	});  

//===================================================================================================
//==================== Update Player With Top Song ==================================================
//=================================================================================================== 

	function displaySong(response){
		$('div.btn-play').removeClass("disabled")
		var newAuthor = response.tracks.items[0].artists[0].name
		var newTitle = response.tracks.items[0].name
		var newAlbum = response.tracks.items[0].album.images[0].url
		var newSong = response.tracks.items[0].preview_url

		$('p.title').text(newTitle)
		$('p.author').text(newAuthor)
		$('div.cover>img').attr("src",newAlbum)
		$('audio').attr("src",newSong)

		console.log("------response------")
		console.log(response)
		console.log("--------Album--------")
		console.log(newAlbum)
		console.log("-------Title---------")
		console.log(newTitle)
		console.log("------newAuthor-------")
		console.log(newAuthor)
		console.log("-------SongUrl--------")
		console.log(newSong)
	};

//===================================================================================================
//==================== Display Error Function =======================================================
//=================================================================================================== 

	function handleError (error) {
	  console.log("Watch yo Back! We got an urrur");
	  console.log(error.responseText);
	}
//===================================================================================================
//=============== Play Button Functionality =========================================================
//===================================================================================================

	$('.btn-play').on('click', function(){
  		$('div.btn-play').toggleClass("playing")
  			if ($('div.btn-play').hasClass("playing")){	
  				$('audio').trigger('play');}
  			else {
  				$('audio').trigger('pause');
  			}
	});


	// $('.btn-play.playing').on('click', function(){
 //  		$('audio').trigger('pause');
	// });

//===================================================================================================


});