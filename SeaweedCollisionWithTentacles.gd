extends Area2D

export(Texture) var noWeedSprite

var switched = false

func _ready():
	connect("area_enter", self, "_on_area_enter")

func _on_area_enter(area):
	if area.is_in_group("quad_tentacle"):
		if(!switched):
			switched = true
			get_parent().set_texture(noWeedSprite)
			global.seaweeds += 1
			var weedString = "weed"+str(int(rand_range(1,10)))
			get_node("SamplePlayer2D").play(weedString)