extends Control

onready var music = get_node("/root/Global/Music")
onready var timer = get_node("/root/Global/Timer")

func _ready():
	pass


func _on_Return_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://right_side/Right_Side.tscn")


func _on_Hatch_pressed():
	if Global.hasWheel == true and Global.hasBag == true:
		timer.set_paused(true)
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://menus/Victory.tscn")
		music.stop()


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
