extends Node

func _ready():
	var punktid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]
	var punktid_a = []
	var kokku = 0
	for i in punktid:
		kokku += i
	var keskmine = kokku / len(punktid)
	
	print("Keskmine: ",keskmine)
	
	if i not in punktid_a:
		punkt.appear(punktid_a)
			
	
	print("Punktid: ",punktid_a)
	
	
	print("*^yl5.2***********************************")
	
