extends Node2D
@onready var timer: Timer = $Timer
const PIPE = preload("uid://l34jwq0bdvlm")

func _process(_delta: float) -> void:
	if timer.is_stopped():
		var pipe = PIPE.instantiate()
		pipe.position = Vector2(600, randf_range(50, 150))
		add_child(pipe)
		timer.start()
