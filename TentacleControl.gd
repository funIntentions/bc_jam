extends Node2D

export var rotationLimit = 1.5
export var rotationSpeed = 1
export var moveSpeed = Vector2(1,0)
export var verticalMoveSpeed = Vector2(1,1)

func _ready():
	self.set_process(true)
	self.set_process_input(true)
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	set_pos(get_pos()+moveSpeed)
	get_parent().get_child(0).set_pos(get_parent().get_child(0).get_pos()+moveSpeed)
	get_parent().get_child(1).set_pos(get_parent().get_child(1).get_pos()+moveSpeed)
	if(Input.is_action_pressed("p1_radial_movement_a")):
		if(Input.get_joy_axis(0,0) < 0 &&  get_node("BodySprite/TentacleAJoint").get_rot() > -rotationLimit):
			get_node("BodySprite/TentacleAJoint").rotate(Input.get_joy_axis(0,0)*delta*rotationSpeed)
		if(Input.get_joy_axis(0,0) > 0 &&  get_node("BodySprite/TentacleAJoint").get_rot() < rotationLimit):
			get_node("BodySprite/TentacleAJoint").rotate(Input.get_joy_axis(0,0)*delta*rotationSpeed)
	if(Input.is_action_pressed("p1_radial_movement_b")):
		if(Input.get_joy_axis(0,2) > 0 &&  get_node("BodySprite/TentacleBJoint").get_rot() < rotationLimit):
		 	get_node("BodySprite/TentacleBJoint").rotate(Input.get_joy_axis(0,2)*delta*rotationSpeed)
		if(Input.get_joy_axis(0,2) < 0 &&  get_node("BodySprite/TentacleBJoint").get_rot() > -rotationLimit):
			 get_node("BodySprite/TentacleBJoint").rotate(Input.get_joy_axis(0,2)*delta*rotationSpeed)
	if(Input.is_action_pressed("p2_radial_movement_c")):
		if(Input.get_joy_axis(1,0) > 0 &&  get_node("BodySprite/TentacleCJoint").get_rot() < rotationLimit):
			get_node("BodySprite/TentacleCJoint").rotate(Input.get_joy_axis(1,0)*delta*rotationSpeed)
		if(Input.get_joy_axis(1,0) < 0 &&  get_node("BodySprite/TentacleCJoint").get_rot() > -rotationLimit):
			get_node("BodySprite/TentacleCJoint").rotate(Input.get_joy_axis(1,0)*delta*rotationSpeed)
	if(Input.is_action_pressed("p2_radial_movement_d")):
		if(Input.get_joy_axis(1,2) > 0 &&  get_node("BodySprite/TentacleDJoint").get_rot() < rotationLimit):
			get_node("BodySprite/TentacleDJoint").rotate(Input.get_joy_axis(1,2)*delta*rotationSpeed)
		if(Input.get_joy_axis(1,2) < 0 &&  get_node("BodySprite/TentacleDJoint").get_rot() > -rotationLimit):
			get_node("BodySprite/TentacleDJoint").rotate(Input.get_joy_axis(1,2)*delta*rotationSpeed)
			
	if(Input.is_action_pressed("p1_right_trigger")):
		set_pos(get_pos()+Vector2(0,3))
		#set_scale(Vector2(get_scale().x+0.001, get_scale().y+0.001))
	if(Input.is_action_pressed("p2_right_trigger")):
		set_pos(get_pos()+Vector2(0,-3))
		#set_scale(Vector2(get_scale().x-0.001, get_scale().y-0.001))