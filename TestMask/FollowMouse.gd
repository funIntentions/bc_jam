extends Node2D

func _ready():
	set_process(true)

func _process(delta):
	set_pos(get_viewport().get_mouse_pos())