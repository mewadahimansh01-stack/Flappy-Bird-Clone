extends StaticBody2D
func _process(delta: float) -> void:
	if position.x <= -100: 
		queue_free()                             
	else:
		position.x -= 100 * delta
func _on_score_updater_body_entered(body: Node2D) -> void:
	if body == $"../Player":
		$"../ScoreKeeper".score += 1
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == $"../Player":
		$"..".playing = false
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body == $"../Player":
		$"..".playing = false
