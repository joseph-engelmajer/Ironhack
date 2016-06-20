var user = {}
var responses = []

function question1 () {
	var name = prompt ("What's your name?")
	user.name = name 
}

question1();

function question2() {
	var quest1 = prompt ("Are you a human?")
	if (quest1.toLowerCase() === "yes") {
		quest1 = true
	}
	else if (quest1.toLowerCase() === "no") {
		quest1 = false
	}
	else  {
		alert("Invalid response. Please answer either 'yes' or 'no'.");
	return question2();
	}
	responses.push(quest1);
}
question2();

function question3() {
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  js = js.toLowerCase();
  switch (js) {
   case "livescript":
   	responses.push(true) 
   	break;
   	case  "java":
   	responses.push(false)
   	break;
   	case "javalive":
   	responses.push(false)
   	break;
   	case "scriptyscript":
   	responses.push(false)
	break;  
  }
}

question3();

function question4() {
	var quest1 = prompt ("Is Pluto a planet?")
	if (quest1.toLowerCase() === "yes") {
		quest1 = true
	}
	else if (quest1.toLowerCase() === "no") {
		quest1 = false
	}
	else  {
		alert("Invalid response. Please answer either 'yes' or 'no'.");
	return question2();
	}
	responses.push(quest1);
}
question4();

function question5() {
	var quest1 = prompt ("Is Bill Murray the science guy?")
	if (quest1.toLowerCase() === "yes") {
		quest1 = false
	}
	else if (quest1.toLowerCase() === "no") {
		quest1 = true
	}
	else  {
		alert("Invalid response. Please answer either 'yes' or 'no'.");
	return question2();
	}
	responses.push(quest1);
}
question5();

function question6() {
  var jj = prompt('Who is JJ Styles?: A Pimp, A Gangsta, A Rapper, or All of the above?');
  jj = jj.toLowerCase();
  switch (jj) {
   case "all of the above":
   	responses.push(true) 
   	break;
   	case  "a pimp":
   	responses.push(false)
   	break;
   	case "a gangsta":
   	responses.push(false)
   	break;
   	case "a rapper":
   	responses.push(false)
	break;  
  }
}

question6();

function evaluate(responses) {

var correct = 0;
var incorrect = 0;

responses.forEach(function(answer) {
	if (answer === true) {correct += 1
	}
		else if (answer === false) {incorrect +=1
		}
});

user.correct = correct;
user.incorrect = incorrect;

showResults();
}


function showResults() {

console.log (user)

}

evaluate(responses); 


