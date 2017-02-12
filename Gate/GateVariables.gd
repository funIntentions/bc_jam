extends Node2D

var tentacle_one_rot = rand_range(270, 360)
var tentacle_two_rot = rand_range(180, 270)
var tentacle_three_rot = rand_range(90, 180)
var tentacle_four_rot = rand_range(0, 90)

func gen_rotations():
	randomize()
	tentacle_one_rot = rand_range(270, 360)
	tentacle_two_rot = rand_range(180, 270)
	tentacle_three_rot = rand_range(90, 180)
	tentacle_four_rot = rand_range(0, 90)

func _ready():
	gen_rotations()
