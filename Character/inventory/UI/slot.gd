extends Control

@export var sprite : Sprite2D
@export var button : TextureButton
@export var label : Label

@export var inv : inventory

var txt : Texture
var quantity : int 
var index : int

#func _ready() -> void:
#	inv.connect("update",update_ui)


#aha to tylko dlatego ze to jest w procesie XDDDDDD kocham zycie 
#dobra juz dziala tylko jest mal problem z tymi sygnalami bo cos nie zalapuje i sie pulta
func _process(delta: float) -> void:
	if txt != null:
		button.texture_normal = txt
		var q = str(quantity)
		label.text = q
	else :
		label.text = ""

func pressed() -> void:
	print("nnn")
	button.texture_normal = null
	label.text = ""
