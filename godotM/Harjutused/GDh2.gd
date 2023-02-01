#M.Kuusemae
#25.01.23
#h2

extends Node

func _ready():
	var tootunnid = 40
	var tunnitasu = 5
	var tasu
	var tunnid = 50
	if tootunnid >= 40:
		tasu = tunnid * tunnitasu
	else:
		tasu = 40 * tunnitasu + (tunnid - 40) * 1.5 * tootunnid
	print(tasu)
	
	print("*^yl5.1***********************************")
	
	var player = {"posx":"50", "posy":"50", "health":100, "items":["relv","vibu"], "gold":0}
	while player.gold < 5:
		player.gold += 5
	print("Kulla kogus: ",player.gold)
	
	print("*^yl4.2***********************************")
	
	var mangijad = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	var m_arv = len(mangijad)
	print("Mängijate arv: ",m_arv)
	print("Esimene mängija: ",mangijad[0])
	mangijad.sort()
	mangijad.erase("Reyes")
	mangijad.append("Mihkel")
	var biggest = mangijad.max()
	print("Kõige pikem nimi: ",biggest)
	print("Kõik mängijad",mangijad)
	
	print("*^yl4.1***********************************")
	
	"""
	var p1_health = 100
	var p2_health = 100
	var dmg1 = randi() % 15 - 8
	var dmg2 = randi() % 15 - 8
	while p1_health > 0:
		p1_health -= dmg2
	while p2_health > 0:
		p2_health -= dmg1
	print("P1 Hit: ",dmg1,", P2 Life: ",p2_health)
	print("P2 Hit: ",dmg2,", P1 Life: ",p1_health)
	print("Game Over!")
	print("Mängija")
	"""
	
	print("*^yl3***********************************")
	
	var toode = 150
	var raha = 100
	
	if toode <= raha:
		print("Saad toote osta.")
	else:
		print("Raha jääb puudu ",toode-raha)

	var ristkulik = 8 * 4
	print("Ristküliku pindala on: ",ristkulik,".Tegemist on ristkülikuga")
	print("*^yl2************************")
