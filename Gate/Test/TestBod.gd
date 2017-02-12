extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)

func _process(delta):
	set_pos(get_viewport().get_mouse_pos())


func _on_Area2D_area_enter( area ):
	print("I've entered!")


func _on_Gate_area_enter( area ):
	print("Whoa, hello!")
