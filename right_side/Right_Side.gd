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
	get_tree().change_scene("res://right_side/Vent.tscn")


func _on_Ladder_pressed():
	get_tree().change_scene("res://right_side/Exit.tscn")
