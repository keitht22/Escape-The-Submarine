extends Control


func _ready():
	pass


func _on_Left_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://cockpit/Cockpit.tscn")


func _on_Right_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://back/Back.tscn")


func _on_Vent_pressed():
# warning-ignore:return_value_discarded
	if Global.hasMagnet == true:
		Global.hasKey = true
		$Inventory/Key.visible = true


func _on_Ladder_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://right_side/Exit.tscn")


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
