extends TextureButton


func _on_pressed() -> void:
	self.visible = false
	$"../DrawerOpen".visible = true
	
	pass # Replace with function body.
