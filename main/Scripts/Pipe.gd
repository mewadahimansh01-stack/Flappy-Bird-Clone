extends StaticBody2D

func _process(delta: float) -> void:
	if position.x <= -100:
		queue_free()
	else:
		position.x -= 100 * delta
