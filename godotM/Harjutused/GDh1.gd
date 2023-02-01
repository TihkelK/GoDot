#M.Kuusemae
#h1

extends Node

func _ready():
	print("---------- yl1 ----------")
	
	var playerName = "Godot robot"
	var playerHealth = 10
	print("Nimi: ", playerName)
	print("Elud: ", playerHealth)
	print("Nime pikkus: ",len(playerName))
	print("Elud(+2): ",playerHealth + 2)
	print("Suva arv: ",randi() % 20)
