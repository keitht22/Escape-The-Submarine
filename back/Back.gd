extends Control


func _ready():
	pass


func _on_Left_pressed():
	get_tree().change_scene("res://right_side/Right_Side.tscn")


func _on_Right_pressed():
	get_tree().change_scene("res://left_side/Left_Side.tscn")
