require("../app.js")


class PitFight{
	constructor(viking1, viking2){
		this.viking1 = viking1
		this.viking2 = viking2
	}

	attack () {
		this.viking2.health -= (this.viking1.strength/5)
		this.viking1.health -= (this.viking2.strength/5)
	}

	fightRounds () {
		var i = 0
		for (i=0; i<=10; i++) {
		this.attack()

			if (this.viking1.health < 20 || this.viking2.health < 20) {
				i = 10		
			};

			if (i==10 && this.viking1.health > this.viking2.health) {
				console.log(this.viking1.name + " is the winner!")
			} else if (i==10 && this.viking2.health > this.viking1.health) {
				console.log(this.viking2.name + " is the winner!")
			};
		}	
	}	
}

module.exports = PitFight 
