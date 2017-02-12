extends Node2D

var checked = false
var start_x

func _ready():
	set_process(true)

func _process(delta):
	if !checked:
		var player = get_node("/root/Game/Quadupus")
		
		var gate_x = get_global_pos().x
		var player_x = player.get_global_pos().x
		
		var gate_pieces = get_tree().get_nodes_in_group("gate_piece")
		
		var touch_count = 0
		
		for piece in gate_pieces:
			if piece.is_touching():
				touch_count += 1
			
		if touch_count >= 5:
			print("Everything is touching")
			set_z(10) #Set the z to a high number so that the player appears to go behind it
			checked = true
		
		if player_x >= gate_x:
			print("Passed")
			var sampleString = "split"+str(int(rand_range(1,4)))
			get_node("SamplePlayer2D").play(sampleString)
			checked = true
