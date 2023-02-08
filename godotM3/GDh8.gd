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
	if valik == null:
		pass
	else:
		$taust/valik.bbcode_text = "[center]%s[/center]" % valik
	if arvuti_valik == null:
		pass
	else:
		$taust/valik2.bbcode_text = "[center]%s[/center]" % arvuti_valik
	if tulemus == null:
		pass
	else:
		$taust/tulemus.bbcode_text = "[center]%s[/center]" % tulemus
	$taust/punktid.bbcode_text = "[center]Punktid: %s[/center]" % mangija_skoor
	$taust/punktid2.bbcode_text = "[center]Punktid: %s[/center]" % arvuti_skoor
	if mangija_skoor == 10:
		$taust/voitja.bbcode_text = "[center]Mängija võitis[/center]"
		$taust/kivi.visible = false
		$taust/paber.visible = false
		$taust/kaarid.visible = false
	elif arvuti_skoor == 10:
		$taust/voitja.bbcode_text = "[center]Arvuti võitis[/center]"
		$taust/kivi.visible = false
		$taust/paber.visible = false
		$taust/kaarid.visible = false
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
	get_tree().reload_current_scene()
