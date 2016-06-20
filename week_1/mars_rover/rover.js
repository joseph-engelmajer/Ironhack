var myRover = {
  position: [0,0], 
  direction: 'N'
};

function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]++
      break;
    case 'E':
      rover.position[1]++
      break;
    case 'S':
      rover.position[0]--
      break;
    case 'W':
      rover.position[1]--
      break;
  };

  //console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

goForward(myRover);

function goBack(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]--
      break;
    case 'E':
      rover.position[1]++
      break;
    case 'S':
      rover.position[0]++
      break;
    case 'W':
      rover.position[1]++
      break;
  };
  //console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

function goLeft(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'W'
      break;
    case 'E':
      rover.direction = "N"
      break;
    case 'S':
      rover.direction = "E"
      break;
    case 'W':
      rover.direction = "S"
      break;
  };
  //console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

function goRight(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = "E"
      break;
    case 'E':
      rover.direction = "S"
      break;
    case 'S':
      rover.direction = "W"
      break;
    case 'W':
      rover.direction = "N"
      break;
  };
  //console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}


function execute_commands (Commands){
Commands.forEach (function(command){
  if  (command === 'l') {
    myRover.goLeft
  }
  else if (command === 'r') {
    myRover.goRight
  }
  else if (command === 'f') {
    myRover.goForward
  }
  else if (command === 'b') {
    myRover.goBack
  }

});
console.log("New Rover Position: [" + myRover.position[0] + ", " + myRover.position[1] + "] " + myRover.direction) 
}

execute_commands (['l','l','f','f','f','r','b','f','f','l','f','f','b','l,'f','f'])