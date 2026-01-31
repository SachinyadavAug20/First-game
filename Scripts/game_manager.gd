extends Node

@onready var score_board: Label = $ScoreBoard

var score=0;
func add_points():
	score+=1
	print(score)
	score_board.text="You collected " + str(score) + "/22 coins.";
