extends Node

var rng = RandomNumberGenerator.new()

var vaenlaseElud = 100
var salv = 5
var laskude_arv = int()
var skoor = int()
var tabamisprots = []
var tegevus

func _ready():
	pass

func _process(delta):
	
	$kirjad/kuulid.text = "Kuulid: %s" % salv
	#$kirjad/tegevus.text = tegevus
	
	if Input.is_action_just_pressed("lase_relva"):
		#tegevus.append("Laskmine")
		laskmine(salv)
	if Input.is_action_just_pressed("lae_relva"):
		print("*Laen*")
		print("--------------------")
		#tegevus.append("Laadime")
		laadimine()
	if vaenlaseElud <= 0:
		tabamisprots = (skoor * 100 / laskude_arv)
		print("Game Over")
		print("Punktid: ",skoor)
		print("Laskude arv: ",laskude_arv)
		print("Efektiivsus: ",tabamisprots,"%")
		get_tree().quit()

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
