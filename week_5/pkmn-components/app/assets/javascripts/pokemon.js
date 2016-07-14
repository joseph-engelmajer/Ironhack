// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.Pokemon = class {
	constructor (pokemonUri){
		this.id = PokemonApp.idFromUri(pokemonUri);
	}

	render() {
		// console.log("Rendering pokemon: #"+this.id);

		$.ajax({
			type: 'GET',
			url: "/api/pokemon/" + this.id,
			success: function(response) {
				var type_string = []
				var pkmn_type = response.types.forEach(function(type) {
					type_string.push(type.name);
				});
				var pkmn_type_string = type_string.join(", ")

				$(".js-pkmn-name").text(response.name);
				$(".js-pkmn-number").text(response.pkdx_id);
				$(".js-pkmn-height").text(response.height);
				$(".js-pkmn-weight").text(response.weight);
				$(".js-pkmn-hp").text(response.hp);
				$(".js-pkmn-attack").text(response.attack);
				$(".js-pkmn-defense").text(response.defense);
				$(".js-pkmn-sp-attack").text(response.sp_atk);
				$(".js-pkmn-sp-defense").text(response.sp_def);
				$(".js-pkmn-speed").text(response.speed);
				$(".js-pkmn-type").text(pkmn_type_string);

				$(".js-pokemon-modal").modal("show");
				
					//Calling Sprites function from different file
					var sprites = new PokemonApp.Sprites(response.sprites[0].resource_uri)
					sprites.render()

					var description = new PokemonApp.Description(response.descriptions)
					description.render()

			},
			error: function(response) {
				console.log("erroooorrrrrrr")
				console.log(response.responseText);
			}

		});
	}
}
	
PokemonApp.idFromUri = function(pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
}

$(document).on("ready", function(){

	$(".js-show-pokemon").on("click", function(event){
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render()
	});

});

