extends CanvasLayer
@onready var score_display: Label = $ScoreDisplay
@onready var timer: Timer = $"../Timer"

var score = 0

func _process(_delta: float) -> void:
	score_display.text = "Score: " + str(score)
	if timer.is_stopped():
		update_score()
	
func update_score() -> void:
	score += 1
