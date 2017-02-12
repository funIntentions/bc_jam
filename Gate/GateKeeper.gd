extends Node2D

var checked = false
var start_x

func _ready():
	set_process(true)

func _process(delta):
	if !checked:
		var player = get_node("/root/Game/Quadupus")
		
		var gate_x = get_pos().x
		var player_x = player.get_pos().x
		
		if player_x >= gate_x:
			print("passed")
			var gate_pieces = get_tree().get_nodes_in_group("gate_piece")
			
			var touch_count = 0
			
			for piece in gate_pieces:
				if piece.is_touching():
					touch_count += 1
			
			if touch_count >= 5:
				print("Everything is touching")