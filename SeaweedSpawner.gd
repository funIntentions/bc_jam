extends Node2D

export (PackedScene) var seaweed
var timer
var randomTime = 6

func _ready():
	timer = get_node("Timer")
	timer.connect("timeout", self, "spawnSeaweed")
	timer.set_wait_time(randomTime)
	timer.start()

func spawnSeaweed():
	add_child(seaweed.instance())
	var camPosition = (get_parent().get_child(0).get_pos())
	set_pos(Vector2(camPosition.x + 600, camPosition.y + (rand_range(-500,100))))
	timer.set_wait_time(rand_range(6,10))