extends Control

var txt : Texture
var label : Label 
var pressed : bool

func _process(delta: float) -> void:
	if txt != null:
		$Sprite2D.texture = txt
