extends CharacterBody2D

var dir : Vector2
var speed := 5000

#  /\_/\  (
# ( ^.^ ) _)
#   \"/  (
# ( | | )
#(__d b__)

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



func character_can_grab(body: Node2D) -> void:
	if body.is_in_group("Item"):
		print("no i chuj nie chce mi sie dzisiaj tego pisac bo juz jest pozno a jutro trzeba wsacz i to wczesnie wiec nie pozdrawiam wszystkich i ogonie to lubie czogi i peptipoptery w szczegolnosci te bojowe xd co ja gadam XD")
