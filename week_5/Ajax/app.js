
$(document).ready(function () {
	function fetchCharactersWithJQuery() {
    	$('.charList').empty();	
    	$.ajax({
            type: "GET",
            url: "https://ironhack-characters.herokuapp.com/characters",
            success: function (response) {
              console.log('--- with jQuery ---');
              console.log("Success!");
              showCharacters(response);
            },
            error: function (error) {
              console.log("Error!");
              console.log(error.responseText);
            }
        });			   
    }

			fetchCharactersWithJQuery();


    function showCharacters (charactersArray) {
        charactersArray.forEach(function (theCharacter) {
            var html = `
				<li> 
					<h2>${theCharacter.name}</h2> 
					<h3>${theCharacter.weapon}</h3>
					<h4>${theCharacter.occupation}</h4>							
				</li>
            `
      
            $('.charList').prepend(html);
        });
    }



       $('.js-character-form').on("submit", function (event) {
		    event.preventDefault();
		    var theName = $('.js-name').val()
		    var theOccupation = $('.js-occupation').val()
		    var theWeapon = $('.js-weapon').val()
		    var newCharacter = {name:theName , occupation:theOccupation , weapon:theWeapon};
		    	
	    	$.ajax({
	            type: "POST",
	            url: "https://ironhack-characters.herokuapp.com/characters",
	            data: newCharacter,
	            success: fetchCharactersWithJQuery,
	            error: function (error) {
				    console.log("Error!");
				    console.log(error.responseText);
				}
	        });  
	        alert("FORM SUBMITTED");   
	    });

	   
});

