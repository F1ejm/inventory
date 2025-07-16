extends Resource

class_name inventory

@export var items : Array[item]
var capasity = 5
var is_in_inv : bool
var sprites : Array[Texture]


func insert(body):
	print("capasity:",capasity) 
	if capasity > 0 :
		body.queue_free()
		if items.has(body.item_info):
			print("do starego slota")
		items.append(body.item_info)
		capasity -= 1 
	else:
		print("nichu")

func add_to_items(body):
	print(items)
