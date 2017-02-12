extends Node2D

export (PackedScene) var seaweed
var timer

func _ready():
	timer = get_node("Timer")
	timer.connect("timeout", self, "spawnSeaweed")
	timer.set_wait_time(6)
	timer.start()

func spawnSeaweed():
	add_child(seaweed.instance())
	var camPosition = (get_parent().get_child(0).get_pos())
	set_pos(Vector2(camPosition.x + 600, camPosition.y + (rand_range(-500,100))))