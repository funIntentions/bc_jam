extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var sexy_test_bod
func _ready():
	sexy_test_bod = get_node("/root/TestBod")
	set_fixed_process(true)

func _fixed_process(delta):
	pass
