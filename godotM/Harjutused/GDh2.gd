#M.Kuusemae
#h2
extends Node

func _ready():
	print("---------- yl2 ----------")
	
	var toode = 150
	var raha = 100
	
	if toode <= raha:
		print("Saad toote osta.")
	else:
		print("Raha jääb puudu ",toode-raha)

	var ristkulik = 8 * 4
	print("Ristküliku pindala on: ",ristkulik,". Tegemist on ristkülikuga.")
