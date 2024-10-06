extends TextureButton
signal capture_petri

@export var wait_time: float = 3.0
var wait: float
var is_capturing: bool = false

func _ready():
	wait = wait_time

func _process(delta: float) -> void:
	if (is_capturing == true):
		wait -= 1 * delta
	
	if (wait <= 0):
		capture_petri.emit()
		wait = wait_time


func _on_button_down() -> void:
	print('down')
	is_capturing = true
	wait = wait_time


func _on_button_up() -> void:
	print('up')
	is_capturing = false
