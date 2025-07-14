extends Resource

class_name inventory

@export var items : Array
var capasity = 2


func insert(body):
#	if capasity == 0:
#		print("fajne")s
#		print(items)
#	else:
	print(capasity) 
	if capasity > 0 :
		items.append(body.item_info)
		body.queue_free()
		capasity -= 1 
		print(items)
	else:
		print("nichu")
