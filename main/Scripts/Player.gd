extends RigidBody2D

@onready var bird: AnimatedSprite2D = $Bird

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("Flap"):
		bird.play("Flap")
		linear_velocity.y -= 15;
	else:
		bird.play("Idle")
