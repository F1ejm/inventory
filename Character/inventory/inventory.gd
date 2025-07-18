extends Resource

class_name inventory

signal update

@export var items : Array[item]
var capasity = 6
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
#			print(items)
#			print("do starego slota")
			emit_signal("update")
			return
		items.append(body.item_info)
		capasity -= 1 
		emit_signal("update")
	else:
		print("nichu")
