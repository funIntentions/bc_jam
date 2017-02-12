extends Area2D

var touching_node = null

func _ready():
	var gate_variables = get_node("/root/Game/GateVariables")
	var tentacle_one = get_node("Tentacle 1")
	var tentacle_two = get_node("Tentacle 2")
	var tentacle_three = get_node("Tentacle 3")
	var tentacle_four = get_node("Tentacle 4")
	tentacle_one.set_rot(gate_variables.tentacle_one_rot)
	tentacle_two.set_rot(gate_variables.tentacle_two_rot)
	tentacle_three.set_rot(gate_variables.tentacle_three_rot)
	tentacle_four.set_rot(gate_variables.tentacle_four_rot)
	connect("area_enter", self, "_on_area_enter")
	connect("area_exit", self, "_on_area_exit")

func is_touching():
	return touching_node != null

func _on_area_enter(area):
	if area.is_in_group("quad_body"):
		touching_node = area

func _on_area_exit(area):
	if area == touching_node:
		touching_node = null