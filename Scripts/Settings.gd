

func _on_MenuButton_pressed():
	get_tree().change_scene("res://Scenes/menu.scn")


func _on_CheckBox_toggled( pressed ):
	if (pressed):
		OS.set_window_fullscreen(true)
	else:
		OS.set_window_fullscreen(false)



