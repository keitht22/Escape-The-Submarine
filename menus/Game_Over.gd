extends Control


func _ready():
	pass


func _on_Try_Again_pressed():
	get_tree().change_scene("res://cockpit/Cockpit.tscn")


func _on_Quit_pressed():
	get_tree().quit()
