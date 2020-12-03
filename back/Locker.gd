extends Control


func _ready():
	if Global.hasBag == true:
		$open_locker/bag.visible = false
	if Global.hasMagnet == true:
		$open_locker/magnet.visible = false


func _on_Return_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://back/Back.tscn")


func _on_bag_pressed():
	Global.hasBag = true
	$Inventory/Bag.visible = true
	$open_locker/bag.queue_free()


func _on_magnet_pressed():
	Global.hasMagnet = true
	$Inventory/Magnet.visible = true
	$open_locker/magnet.queue_free()


func _on_ToggleInventory_pressed():
	if $Inventory.visible == true:
		$Inventory.visible = false
	else:
		if Global.hasKey == true:
			$Inventory/Key.visible = true
		if Global.hasMagnet == true:
			$Inventory/Magnet.visible = true
		if Global.hasWheel == true:
			$Inventory/Wheel.visible = true
		if Global.hasBag == true:
			$Inventory/Bag.visible = true
		$Inventory.visible = true
