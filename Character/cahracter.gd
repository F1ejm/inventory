extends CharacterBody2D

var dir : Vector2
var speed := 100

func _process(delta: float) -> void:
	velocity = dir
	dir = Vector2(0,0)
	move_and_slide()
	
func _input(event: InputEvent) -> void:
	dir = Vector2(0,0)
	if event.is_action("W"):
		dir += Vector2(0,-speed)
	if event.is_action("S"):
		dir += Vector2(0,speed)
	if event.is_action("A"):
		dir += Vector2(-speed,0)
	if event.is_action("D"):
		dir += Vector2(speed,0)
	print(dir)
