extends TextureButton


func _on_pressed() -> void:
	self.visible = false
	$"../DrawerClosed".visible = true
	
	pass # Replace with function body.
