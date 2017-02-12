extends Area2D

var touching_node = null

func _ready():
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