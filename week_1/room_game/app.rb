require_relative('lib/room_class.rb') 
require_relative('lib/map_class.rb')

room = Room.new("Welcome to the layer of the Rhyming Dragon! Go forth to the next room! .", "N")
room1 = Room.new("The dragon breathes fire. Fear the beast!", "E")
room2 = Room.new("Seems this room is set up similarly to the first. Perhaps you're lucky and the dragon has quenched his thirst for human blood.", "N")
room3 = Room.new("Of all the dragons this one is best!", "W")
room4 = Room.new("He keeps scraps of humans in his mouth! Ewww!", "S")


my_map = Map.new

my_map.add_room(room)
my_map.add_room(room1)
my_map.add_room(room2)
my_map.add_room(room3)
my_map.add_room(room4)

my_map.play