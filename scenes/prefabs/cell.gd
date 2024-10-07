extends Node2D

@export var max_life: float
var current_life: float
var is_refrigerated: bool = true
@export var regen_rate: float = 10.0

func _process(delta: float) -> void:
	if is_refrigerated:
		current_life += delta * regen_rate

func move() -> void:
	print("hi")
	
