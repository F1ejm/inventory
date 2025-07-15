extends Resource

class_name inventory

@export var items : Array
var capasity = 5
var sprites : Array[Texture]


func insert(body):
	print(capasity) 
	if capasity > 0 :
		items.append(body.item_info)
		body.queue_free()
		capasity -= 1 
#		print(items)
	else:
		print("nichu")
