extends RigidBody2D
@onready var bird: AnimatedSprite2D = $Bird

func _process(delta: float) -> void:
	if Input.is_action_pressed("Flap"):
		bird.play("Flap")
		linear_velocity.y -= 1000 * delta;
	else:
		bird.play("Idle")
