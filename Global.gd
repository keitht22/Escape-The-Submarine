extends Node2D


func _ready():
	pass


func _on_Timer_timeout():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://menus/Game_Over.tscn")
