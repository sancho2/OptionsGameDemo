extends Node2D

@onready var bc: OptionButton = $BC
@onready var ab: OptionButton = $AB
@onready var sk: OptionButton = $SK
@onready var mb: OptionButton = $MB
@onready var on: OptionButton = $ON
@onready var qc: OptionButton = $QC
@onready var nl: OptionButton = $NL
@onready var nt: OptionButton = $NT
@onready var ns: OptionButton = $NS
@onready var nu: OptionButton = $NU
@onready var pe: OptionButton = $PE
@onready var yt: OptionButton = $YT
@onready var nb: OptionButton = $NB

@onready var questions:Array[OptionButton] = [
bc, ab, sk, mb, on, qc, nl, nt, ns, nu, pe, yt, nb]

@onready var total: Label = $Panel/Total

func check_answers()->void: 
	var score:int = 0 
	print(questions)
	for p:OptionButton in questions: 
		
		if p.selected >= 0: 
			var item_id:int = p.get_item_id(p.selected)
			if item_id == 99:
				score += 1
	total.text = "You have " + str(score) + " out of 13 correct"
	total.visible = true 

func _on_check_pressed() -> void:
	check_answers()
	pass # Replace with function body.
