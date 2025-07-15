extends Control


@export var inv : inventory
@export var list : Array[Control]

func _ready() -> void:
	print("Nice Dick BRO")

func _process(delta: float) -> void:
	
#petla pop to zeby dostac sie do kazdego slota po kolei :
	for item in inv.items.size():
		list[item].txt = inv.items[item].icon
		print(inv.items[item].name)
