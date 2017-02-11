extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.set_process(true)
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if(Input.is_action_pressed("p1_radial_movement_a")):
		get_node("BodySprite/TentacleAJoint").rotate(Input.get_joy_axis(0,0)*delta)
	if(Input.is_action_pressed("p1_radial_movement_b")):
		 get_node("BodySprite/TentacleBJoint").rotate(Input.get_joy_axis(0,2)*delta)
	if(Input.is_action_pressed("p2_radial_movement_c")):
		get_node("BodySprite/TentacleCJoint").rotate(Input.get_joy_axis(1,0)*delta)
	if(Input.is_action_pressed("p2_radial_movement_d")):
		get_node("BodySprite/TentacleDJoint").rotate(Input.get_joy_axis(1,2)*delta)