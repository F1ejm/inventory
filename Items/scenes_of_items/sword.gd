extends StaticBody2D

@export var item_info : item
@export var quantity : int 
@export var txt : Sprite2D

func _ready() -> void:
	txt.texture = item_info.icon


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		queue_free()
