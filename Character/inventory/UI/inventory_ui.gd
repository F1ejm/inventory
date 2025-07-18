extends Control


@export var inv : inventory
@export var list : Array[Control]

func _ready() -> void:
	print("Nice Dick BRO")

func _process(delta: float) -> void:
	
#petla pop to zeby dostac sie do kazdego slota po kolei :
	for item in inv.items.size():
		if inv.items[item] == null:
			list[item].quantity = 0
		else:
			list[item].txt = inv.items[item].icon
			list[item].quantity = inv.items[item].quantity
			list[item].index = item
	#		print(inv.items[item].name)
