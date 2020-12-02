extends Control


func _ready():
	pass


func _on_Left_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://right_side/Right_Side.tscn")


func _on_Right_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://left_side/Left_Side.tscn")


func _on_Blue_pressed():
	pass # Replace with function body.


func _on_Red_pressed():
	pass # Replace with function body.


func _on_Green_pressed():
	pass # Replace with function body.
