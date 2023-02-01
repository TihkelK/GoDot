extends Node

var rng = RandomNumberGenerator.new()

func _ready():
	print("---------- yl3 ----------")
	
	var p1_health = 100
	var p2_health = 100
	
	while p1_health >= 0:
		rng.randomize()
		var p1_dmg = rng.randi_range(8, 15)
		var p2_dmg = rng.randi_range(10, 18)
		p1_health -= p2_dmg
		p2_health -= p1_dmg
		
		print("P1 Hit: ",p1_dmg,"| P2 Life: ",p2_health)
		print("P2 Hit: ",p2_dmg,"| P1 Life: ",p1_health)
	
	if p1_health > 0:
		print("Game Over, P1 võitis.")
	elif p2_health > 0:
		print("Game Over, P2 võitis.")
	else:
		print("Game Over, Mõlemad mängijad kaotasid.")
