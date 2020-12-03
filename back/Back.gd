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
	pass
