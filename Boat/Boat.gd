extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var mask_viewport_path = NodePath()

func _ready():
	var mask_viewport = get_node(mask_viewport_path)
	var mask_texture = mask_viewport.get_render_target_texture()
	get_material().set_shader_param("Mask", mask_texture)
