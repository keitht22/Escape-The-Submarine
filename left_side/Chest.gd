extends Control


func _ready():
	pass


func _on_wheel_pressed():
	pass # Replace with function body.


func _on_Return_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://left_side/Left_Side.tscn")
