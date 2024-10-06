extends Node

# When this node is active, 
# pressing Screenshot-(Development) (Shift+P by default) 
# will take a screenshot of the main camera's view, and save it to the screenshots folder

# if a res://Screenshots folder does not exist it will automatically create one

# note: the image numbers would have ideally gone up linearly, however due to godot creating .import files when it saves
# the way I am calculating that number is no beuno, but whatever, so long as each image gets a unique file name it gets the job done

func _on_capture_button_capture_petri() -> void:
	ScreenShot();
	
func list_files_in_directory(path):
	var dir = DirAccess.open("res://%s" % path);
	if(DirAccess.get_open_error() != 0):
		#there is no directory at path
		DirAccess.make_dir_absolute("res://%s" % path);
		return [];
	return dir.get_files();
	
func ScreenShot() -> void:
	var imageNumber = list_files_in_directory("Screenshots").size();
	var imageName : String = "Image_%s" % imageNumber;
	get_viewport().get_texture().get_image().save_png("res://Screenshots/%s.png" % imageName);
