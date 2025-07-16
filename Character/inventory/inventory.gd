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
			var index = items.find(body.item_info)
			items[index].quantity += 1 
			print(items[index].quantity)
			print(items)
			print("do starego slota")
			return
		items.append(body.item_info)
		capasity -= 1 
	else:
		print("nichu")

func add_to_items(body):
	print(items)
