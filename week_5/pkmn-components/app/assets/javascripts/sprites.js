PokemonApp.Sprites = class {
	constructor (spriteUri){
		this.uri = spriteUri;
	}
	


	render() {

		console.log(this.uri)
		$.ajax({
			type: 'GET',
			// /api/v1/sprite/348/
			url: this.uri,
			success: function(response) {
				$(".js-sprite-img").html(`<img src="http://pokeapi.co/${response.image}"" height="150" class="js-sprite-img">`)
				console.log("--------------this is the sprite api-------");
				console.log(response);
			},
			error: function(response) {
				console.log("erroooorrrrrrr");
				console.log(response.responseText);
			}	
		});	
	}
//========================================================================================================================
//============ Ajax Success Function =====================================================================================
//========================================================================================================================
	// displaySprites (response) {
	// 	$(".js-sprite-img").html("<img src='http://pokeapi.co/${response.image}' height='80' class='js-sprite-img'>")
	// 	console.log("--------------this is the sprite api-------");
	// 	console.log(response);
	// };

//========================================================================================================================	

}

