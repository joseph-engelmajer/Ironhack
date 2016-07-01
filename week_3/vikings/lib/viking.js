"use strict";

class Viking {
	constructor (name, warcry, health, strength){
		this.name = name
		this.warcry = warcry
		this.health = health
		this.strength = strength
	}

	makeWarCry () {
		console.log(this.warcry)
	}

}

module.exports = Viking 

