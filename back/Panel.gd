extends Control

var combination = ["Green","Blue","Red"]
var currentRun = []


func _ready():
	pass


# warning-ignore:unused_argument
func _process(delta):
	if currentRun.size() == 3:
		if currentRun == combination:
			Global.unlocked = true
			$Correct.play()
			print("Storage has been unlocked")
			currentRun = []
		else:
			$Wrong.play()
			print("Incorrect combination, resetting")
			currentRun = []
	if currentRun.size() > 3:
		print("currentRun > combination, resetting.")
		currentRun = []


func _on_Return_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://back/Back.tscn")


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


func _on_Blue_pressed():
	currentRun.append("Blue")


func _on_Red_pressed():
	currentRun.append("Red")


func _on_Green_pressed():
	currentRun.append("Green")
