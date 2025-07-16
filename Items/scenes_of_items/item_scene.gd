extends StaticBody2D

@export var item_info : item
@export var txt : Sprite2D

func _ready() -> void:
	txt.texture = item_info.icon
