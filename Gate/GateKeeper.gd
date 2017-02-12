extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)

func _process(delta):
	var gate_pieces = get_tree().get_nodes_in_group("gate_piece")
	
	for piece in gate_pieces:
		if !piece.is_touching():
			print("Everything is not touching")
			return;
	
	print("Everything is touching")
