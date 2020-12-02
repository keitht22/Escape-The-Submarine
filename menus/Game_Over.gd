extends Control

onready var timer = get_node("/root/Global/Timer")
onready var music = get_node("/root/Global/Music")

func _ready():
	pass


func _on_Try_Again_pressed():
	timer.start()
	music.play()
	get_tree().change_scene("res://cockpit/Cockpit.tscn")


func _on_Quit_pressed():
	get_tree().quit()
