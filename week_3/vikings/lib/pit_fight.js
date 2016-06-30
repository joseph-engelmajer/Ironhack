class PitFight{
	constructor(viking1, viking2){
		this.viking1 = viking1
		this.viking2 = viking2
	}

	attack () {
		this.viking2.health - (this.viking1.strength/5)
		this.viking1.health - (this.viking2.strength/5)
	}

	fightRounds () {
		for (i=0; i<=10; i++) {
		attack()

			if (this.viking1.health < 20 || this.viking2.health < 20) {
				i = 10		
			}
		}	
	}	
}
