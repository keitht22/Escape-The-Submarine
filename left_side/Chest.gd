extends Control


func _ready():
	if Global.hasWheel == true:
		$Chest/Wheel.visible = false

func _on_wheel_pressed():
	Global.hasWheel = true
	$Inventory/Wheel.visible = true
	$Chest/Wheel.queue_free()


func _on_Return_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://left_side/Left_Side.tscn")


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
