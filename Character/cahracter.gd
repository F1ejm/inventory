extends CharacterBody2D

var dir : Vector2
var speed := 5000

func _process(delta: float) -> void:
	dir = Vector2(0,0) 
	if Input.is_action_pressed("W"):
		dir += Vector2(0,-speed)
	if Input.is_action_pressed("S"):
		dir += Vector2(0,speed)
	if Input.is_action_pressed("A"):
		dir += Vector2(-speed,0)
	if Input.is_action_pressed("D"):
		dir += Vector2(speed,0)
	velocity = dir * delta
	move_and_slide()
