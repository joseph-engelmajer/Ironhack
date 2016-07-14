PokemonApp.Description = class {
	constructor (descriptionsArray){
		this.array = descriptionsArray
	}
	
	sortArrayByGen () {
		
		function compare(a,b) {
		  if (a.name < b.name)
		    return 1;
		  if (a.name > b.name)
		    return -1;
		  	return 0;
		}
		this.array.sort(compare);
		var theCorrectUri = this.array[0].resource_uri
		return theCorrectUri
	};

	render() {
		
		var descriptionUri = this.sortArrayByGen();
		
		$.ajax({
			type: 'GET',
			url: descriptionUri,
			success: function(response) {
				$(".js-pkmn-description").text(response.description);
			},
			error: function(response) {
				console.log("erroooorrrrrrr");
				console.log(response.responseText);
			}	
		});	
	}
}	