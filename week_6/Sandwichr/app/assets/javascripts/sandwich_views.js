$(document).ready (function(){
	
	$('.ingredient_btn').on('click', update_sandwich);

});

function update_sandwich(response){
	var ingredient_id = $(event.currentTarget).data("id");
	var sandwich_id = $(event.currentTarget).data("sandwich-id");
	console.log(response)
	console.log("---------sandwich id------------")
	console.log(sandwich_id)
	console.log("---------ingredient id------------")
	console.log(ingredient_id)

	$.ajax({
	            type: "POST",
	            data: {ingredient_id: ingredient_id},
	            url: `/api/sandwiches/${sandwich_id}/ingredients/add`,
	            success: update_the_sandwich,
	            error: handleError
	        });		        	
};

function update_the_sandwich(response){
	console.log("-------lalal------")
	console.log(response)

	var new_total_calories = response.total_calories
	var i = response.ingredients.length - 1;
	var new_ingredient = response.ingredients[i];
	var html = ` 
		<li>
				<p>${new_ingredient.name}</p>
				<p>Calories: ${new_ingredient.calories}</p>
		</li>
	`;
	$('.ingredient_list').append(html)
	$('.tot_cal').text(`Total Calories: ${new_total_calories}`)
};

function handleError (error) {
	  console.log("Watch yo Back! We got an urrur");
	  console.log(error.responseText);
};


