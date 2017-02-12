extends Node2D

var leaf_gate = load("res://Gate/LeafGate.tscn")
var rock_gate = load("res://Gate/RockGate.tscn")
var boat_gate = load("res://Gate/BoatGate.tscn")
var timer
var gateInstance

func _ready():
	timer = get_node("Timer")
	timer.connect("timeout", self, "spawnGate")
	timer.set_wait_time(7)
	timer.start()

func spawnGate():
	if(gateInstance):
		gateInstance.free()
	
	var gate_variables = get_node("/root/Game/GateVariables")
	gate_variables.gen_rotations()
	
	randomize()
	var gate_num = randi() % 3
	
	if gate_num == 0:
		gateInstance = leaf_gate.instance()
	elif gate_num == 1:
		gateInstance = rock_gate.instance()
	elif gate_num == 2:
		gateInstance = boat_gate.instance()
	
	add_child(gateInstance)
	var camPosition = (get_parent().get_child(0).get_pos())
	set_pos(Vector2(camPosition.x + 1050, camPosition.y + (rand_range(-100,100))))