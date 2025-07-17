extends Control

@export var sprite : Sprite2D
@export var label : Label

var txt : Texture
var quantity : int 

func _process(delta: float) -> void:
	if txt != null:
		sprite.texture = txt
		var q = str(quantity)
		label.text = q
	else:
		label.text = ""


func on_slot_pressed() -> void:
	print("wtf typiarzu :3")
