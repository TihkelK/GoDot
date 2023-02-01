extends Node

var mangijad = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]

var player = {"posx":0, "posy":0, "health":100, "items":["relv","vibu"], "gold":10}

func _ready():
	print("---------- yl4.2 ----------")
	
	player.gold += 5 * player.gold
	print("Kulla kogus: ",player.gold)
	
	print("---------- yl4.1 ----------")
	
	var m_arv = len(mangijad)
	print("Mängijate arv: ",m_arv)
	print("Esimene nimi: ",mangijad[0])
	mangijad.sort()
	mangijad.erase("Reyes")
	mangijad.append("Mihkel")
	var biggest = mangijad.max()
	print("Kõige pikem nimi: ",biggest)
	print("Kõik mängijad: ",mangijad)
