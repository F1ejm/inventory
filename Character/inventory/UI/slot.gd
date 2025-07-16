extends Control

var txt : Texture
var label : Label 
var quantity : int 

func _process(delta: float) -> void:
	if txt != null:
		$Sprite2D.texture = txt
