extends RigidBody2D
@onready var bird: AnimatedSprite2D = $Bird
@onready var main: Node2D = $".."
@onready var player: RigidBody2D = $"."
func _process(delta: float) -> void:
	if player.position.y < -50 || player.position.y > 256:
		main.playing = false
	if Input.is_action_pressed("Flap") and main.playing:
		bird.play("Flap")
		linear_velocity.y -= 1000 * delta;
	elif main.playing:
		bird.play("Idle")
