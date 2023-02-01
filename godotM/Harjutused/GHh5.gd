extends Node

var tootunnid = 50
var tunnitasu = 5
var tunnid = 50

var punktid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]

func _ready():
	print("---------- yl5.2 ----------")
	ex_stat(punktid)
	print("---------- yl5.1 ----------")
	too(tunnid,tunnitasu)

func ex_stat(x):
	var kokku = 0
	for i in x:
		kokku += i
	var keskmine = kokku / len(punktid)
	
	print("Keskmine: ",keskmine)
	print("Kõik punktid: ",x)
	
	for i in x:
		if i >= 90:
			print(i,"p - 5")
		elif i >= 75:
			print(i,"p - 4")
		elif i >= 50:
			print(i,"p - 3")
		else:
			print(i,"p - 2")

func too(x,y):
	var tasu
	if tootunnid >= 40:
		tasu = x * y
	else:
		tasu = 40 * y + (x - 40) * 1.5 * tootunnid
	print("Töö tasu on: ",tasu)
