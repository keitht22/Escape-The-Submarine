extends Control


func _ready():
	pass


func _on_Return_pressed():
	get_tree().change_scene("res://right_side/Right_Side.tscn")


func _on_Hatch_pressed():
	if Global.hasWheel == true:
		get_tree().change_scene("res://menus/Victory.tscn")


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
