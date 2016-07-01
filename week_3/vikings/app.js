var Viking = require("./lib/viking.js");
var PitFight = require("./lib/pit_fight.js");

var Ragnar = new Viking('Ragnar', 'WWAAAAAHHHHRRRR', 100, 100)
var Chandler = new Viking('Chandler', 'WWAAAAAHHHHRRRR', 100, 95)
var Ross = new Viking('Ross', 'WWAAAAAHHHHRRRR', 100, 90)
var Nizar = new Viking('Nizar', 'WWAAAAAHHHHRRRR', 100, 105)
var Josh = new Viking('Josh', 'WWAAAAAHHHHRRRR', 100, 100)
var Christie = new Viking('Christie', 'WWAAAAAHHHHRRRR', 100, 85)
var Caro = new Viking('Caro', 'WWAAAAAHHHHRRRR', 100, 90)
var Rachel = new Viking('Rachel', 'WWAAAAAHHHHRRRR', 100, 95)
var Andres = new Viking('Andres', 'WWAAAAAHHHHRRRR', 100, 80)
var Jumbo = new Viking('Jumbo', 'WWAAAAAHHHHRRRR', 100, 65)

var vikingArray= [Ragnar,Chandler,Ross,Nizar,Josh,Christie,Caro,Rachel,Andres,Jumbo]

new PitFight(Ragnar, Nizar) 

module.exports = vikingArray 