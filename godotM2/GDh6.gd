extends Node

var rng = RandomNumberGenerator.new()

var vaenlaseElud = 100
var salv = 5
var laskude_arv = int()
var skoor = int()
var tabamisprots = []

func _ready():
	$kirjad/tegevus.text = "lasen"

func _process(delta):
	$kirjad/kuulid.text = "Kuulid: %s" % salv
	$kirjad/elud.text = "Elud: %s" % vaenlaseElud
	$kirjad/skoor.text = "Skoor: %s" % skoor
	
	if Input.is_action_just_pressed("lase_relva"):
		$kirjad/tegevus.text = "piu piu"
		laskmine(salv)
	if Input.is_action_just_pressed("lae_relva"):
		$kirjad/tegevus.text = "laen"
		print("*Laen*")
		print("--------------------")
		laadimine()
	if vaenlaseElud <= 0:
		vaenlaseElud = 0
		tabamisprots = (skoor * 100 / laskude_arv)
		$kirjad/game_over.text = "Game Over"
		print("Game Over")
		print("Punktid: ",skoor)
		print("Laskude arv: ",laskude_arv)
		print("Efektiivsus: ",tabamisprots,"%")
		get_tree().paused = true

func laskmine(x):
	var pihtas = bool(randi() % 2)
	if salv > 0:
		salv -= 1
		laskude_arv += 1
		print("*piu piu*")
		print()
		if pihtas == true:
			rng.randomize()
			vaenlaseElud -= rng.randi_range(8, 15)
			skoor += 1
			print("Pihtas: -",rng.randi_range(8, 15))
			print("Elud: ",vaenlaseElud)
		else:
			print("(Möödas)")
			print("Elud: ",vaenlaseElud)
	
		print("Salves kuuli: ",x)
	else:
		print("Elud: ",vaenlaseElud)
		print("*Salves kuulid otsas*")
		print("(Laadimiseks (R) )")
	print("--------------------")

func laadimine():
	while salv > 0:
		salv -= 1
	if salv == 0:
		salv += 5
