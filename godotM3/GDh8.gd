extends Node

var rng = RandomNumberGenerator.new()

var valik
var arvuti_valik
var mangija_skoor = int()
var arvuti_skoor = int()
var tulemus

func _ready():
	pass

func _process(delta):
	$taust/valik.text = "%s" % valik
	$taust/valik2.text = "%s" % arvuti_valik
	$taust/tulemus.text = "Võitja: %s" % tulemus


func _on_kivi_pressed():
	valik = "kivi"
	rng.randomize()
	arvuti_valik = rng.randi_range(1,3)
	if arvuti_valik == 1:
		arvuti_valik = "kivi"
		tulemus = "VIIK"
	elif arvuti_valik == 2:
		arvuti_valik = "paber"
		tulemus = "ARVUTI"
		arvuti_skoor += 1
	else:
		arvuti_valik = "kaarid"
		tulemus = "MÄNGIJA"
		mangija_skoor += 1

func _on_paber_pressed():
	valik = "paber"
	rng.randomize()
	arvuti_valik = rng.randi_range(1,3)
	if arvuti_valik == 1:
		arvuti_valik = "kivi"
		tulemus = "MÄNGIJA"
		mangija_skoor += 1
	elif arvuti_valik == 2:
		arvuti_valik = "paber"
		tulemus = "VIIK"
	else:
		arvuti_valik = "kaarid"
		tulemus = "ARVUTI"
		arvuti_skoor += 1

func _on_kaarid_pressed():
	valik = "kaarid"
	rng.randomize()
	arvuti_valik = rng.randi_range(1,3)
	if arvuti_valik == 1:
		arvuti_valik = "kivi"
		tulemus = "ARVUTI"
		arvuti_skoor += 1
	elif arvuti_valik == 2:
		arvuti_valik = "paber"
		tulemus = "MÄNGIJA"
		mangija_skoor += 1
	else:
		arvuti_valik = "kaarid"
		tulemus = "VIIK"

func _on_uus_mang_pressed():
	pass
