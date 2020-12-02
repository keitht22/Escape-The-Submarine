extends Control


func _ready():
	pass


func _on_Left_pressed():
	get_tree().change_scene("res://cockpit/Cockpit.tscn")


func _on_Right_pressed():
	get_tree().change_scene("res://back/Back.tscn")
