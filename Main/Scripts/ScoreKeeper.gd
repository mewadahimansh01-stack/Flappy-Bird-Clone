extends CanvasLayer
@onready var score_display: Label = $ScoreDisplay
@onready var timer: Timer = $"../Timer"
@onready var main: Node2D = $".."
var score = 0
func _process(_delta: float) -> void:
	score_display.text = "Score: " + str(score)
