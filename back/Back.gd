extends Control


func _ready():
	pass


func _on_Left_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://right_side/Right_Side.tscn")


func _on_Right_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://left_side/Left_Side.tscn")


func _on_Panel_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://back/Panel.tscn")


func _on_Locker_pressed():
	#	pop up that says it is locked
	if Global.unlocked == true:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://back/Locker.tscn")


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
