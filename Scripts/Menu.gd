func _on_MenuButton_3_pressed():
	get_tree().quit()


func _on_MenuButton_pressed():
	get_node("/root/globals").setScene("res://map1.scn")
